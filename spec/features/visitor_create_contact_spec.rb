require 'rails_helper'

feature "Contact creation " do
  scenario "allows acces to contacts page " do
    visit new_contacts_path
    expect(page).to have_content I18n.t 'contacts.contact_us'
  end
  scenario "create contact acces" do
      visit new_contacts_path

      fill_in 'contact_email', with: 'aa@bbb'
      fill_in 'contact_message', with: 'blabla'
      click_button 'Send Message'

      expect(page).to have_content I18n.t 'contacts.thanks'
  end
end