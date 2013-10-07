require 'spec_helper'

describe "Static Pages" do
  
  subject {page}

  describe "Home Page" do
    before { visit root_path }

    it { should have_title('Guess Gender') }
  end

  describe "About Page" do
    before { visit about_path }

    it { should have_title('About') }
    it { should have_content("What's Going On?") }
  end

  describe "Help Page" do
    before { visit help_path }

    it { should have_title('Help') }
    it { should have_content("How's This Work?") }
  end
end
