class GuesserController < ApplicationController
  def guess
    # TODO: There should be height/weight params to consider.
    g = rand
    @gender = g > 0.5 ? "male" : "female"
  end
end
