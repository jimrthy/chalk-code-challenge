require "spec_helper"

feature "Guess" do
  scenario "Submit both height and weight" do
    visit root_path

    fill_in "height", :with => '68'
    fill_in "weight", :with => '150'
    click_button "Pigeon Hole"

    # This is a lame test...at the very least, this should be
    # Magic 8-Ball'd.
    # Oh well. It's a start.
    expect(page).to have_text("This human is obviously")
  end
end
