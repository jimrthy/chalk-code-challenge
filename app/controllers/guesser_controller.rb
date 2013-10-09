class GuesserController < ApplicationController
  def guess
    begin
      height = params['height']
      mass = params['mass']
      if height and mass
        # TODO: Actually do something with these
        height = Integer(height, 10)
        mass = Integer(mass, 10)

        units = params['units']
        if units != 'metric'
          puts "units: " + units
          height, mass = view_context.american_to_metric(height, mass)
        end

        Query.create(height: height, mass: mass)

        g = rand
        @gender = g > 0.5 ? "male" : "female"
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
