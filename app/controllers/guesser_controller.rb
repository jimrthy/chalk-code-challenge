class GuesserController < ApplicationController
  def guess
    begin
      height = params['height']
      mass = params['mass']
      if height and mass
        height = Integer(height, 10)
        mass = Integer(mass, 10)

        units = params['units']
        if units != 'metric'
          puts "units: " + units
          height, mass = view_context.american_to_metric(height, mass)
        end

        # Record the inputs for future evil purposes
        Query.create(height: height, mass: mass)

        # Eyeball the charts at http://www.amstat.org/publications/jse/v11n2/datasets.johnson.html
        if height < 165
          @gender = 'female'
        elsif height > 177
          @gender = 'male'
        else
          if mass > 70
            @gender = 'male'
          elsif mass < 60
            @gender = 'female'
          else
            # FIXME: Do something smart and scientific here
            g = rand
            @gender = g > 0.5 ? "male" : "female"
          end
        end
      else
        # FIXME: Return a useful error page
        #render(:file => File.join(Rails.root, 'public/400.html', :status => 400, :layout => false)
        head 403
      end
    rescue ArgumentError => e
      head 403
    end
  end
end
