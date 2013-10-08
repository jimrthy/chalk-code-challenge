require 'spec_helper'

describe GuesserController do

  describe "GET 'guess'" do
    it "returns http success" do
      get 'guess'
      response.should be_success
    end
  end

end
