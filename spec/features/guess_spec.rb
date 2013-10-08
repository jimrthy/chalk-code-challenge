require "spec_helper"

feature "Guess" do
  scenario "Submit both height and weight" do
    visit root_path

    fill_in "Height", :with => '68'
    fill_in "Weight", :with => '150'
    click_button "Pigeonhole Me"

    # This is a lame test...at the very least, this should be
    # Magic 8-Ball'd.
    # Oh well. It's a start.
    expect(page).to have_text("You are obviously")
  end
end
