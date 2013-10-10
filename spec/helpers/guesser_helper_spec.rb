require 'spec_helper'

# Specs in this file have access to a helper object that includes
# the GuesserHelper. For example:
#
# describe GuesserHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       helper.concat_strings("this","that").should == "this that"
#     end
#   end
# end
describe GuesserHelper do
  describe "metric->American" do
    it "inches->centimeters" do
      cms = helper.inches_to_centimeters 500
      Integer(cms).should == 127
    end

    it "pounds->kilos" do
      Integer(helper.pounds_to_kilos 500).should == 226
    end
  end
end
