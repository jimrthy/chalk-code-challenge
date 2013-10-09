require 'spec_helper'

describe GuesserController do

  describe "Guess" do
    it "fails due to missing parameters" do
      get 'guess'
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
      units = 'metric'

      get 'guess', :height => height, :mass => mass, :units => units
      response.should be_success

      q = Query.new(height: height, mass: mass)

      matches = Query.find_by! height: height, mass: mass
    end

    it "converts non-metric" do
      # Unfortunate assumption: non-metric units means American.
      height = 2000
      mass = 1
      units = 'anything else'
      get 'guess', :height => height, :mass => mass, :units => units
      response.should be_success

      # Just hard-code these for now, because I know the conversion factor
      height = 508
      mass = 0
      
      q = Query.new(height: height, mass: mass)
      matches = Query.find_by! height: height, mass: mass
    end

    it "refuses bad values" do
      height = "5'7\""
      mass = "1600 lbs"
      units = "American"
      get 'guess', :height => height, :mass => mass, :units => units
      response.should_not be_success
    end
  end
end
