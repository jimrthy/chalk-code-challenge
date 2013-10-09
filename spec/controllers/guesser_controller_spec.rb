require 'spec_helper'

describe GuesserController do

  describe "GET 'guess'" do
    it "returns http success" do
      get 'guess'

      # Missing parameters
      response.should_not be_success
    end

    it "stores basic history" do
      # Pick some ridiculous numbers that are only appropriate for testing.

      # FIXME: This is a horrible way to handle testing.
      # Honestly, this should all be wrapped up in a transaction that I
      # can just roll back after the test is complete.
      # Q: It seems pretty likely that rspec handles that for me.
      height = 2000
      mass = 1

      get 'guess', :height => height, :mass => mass
      response.should be_success

      q = Query.new(height: height, mass: mass)

      matches = Query.find_by! height: height, mass: mass
    end
  end
end
