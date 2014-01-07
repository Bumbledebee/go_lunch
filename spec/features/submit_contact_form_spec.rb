require 'spec_helper'

feature 'submit contact form', %Q{
  As a site visitor
  I want to contact the owner of the site
  So that I can ask questions or make comments about the site
} do

  # Acceptance Criteria:

  # *I can optionally define anemail address
  # *I must specify a message

  scenario 'user fills in page with valid attributes' do
    visit root_path

    click_link 'Contact Me'
    fill_in "Email", with:"hello@gmail.com"
    fill_in "Message", with:"Nice Site!"
    click_on "Create Message"

    expect(page).to have_content "Message successfully sent"
  end

  scenario 'user does not fill in all attributes' do
  end
end
