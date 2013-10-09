class GuesserController < ApplicationController
  def guess
    # TODO: Actually do something with these
    height = params['height']
    mass = params['mass']
    if height and mass
        Query.create(height: height, mass: mass)

        g = rand
        @gender = g > 0.5 ? "male" : "female"
    else
        #render(:file => File.join(Rails.root, 'public/400.html', :status => 400, :layout => false)
        head 403
    end
  end
end
