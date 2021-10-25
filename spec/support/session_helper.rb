def sign_up
  visit new_user_registration_path
        
      fill_in 'user_email', with: 'aa@bbbb'
      fill_in 'user_username', with: 'Timoha'
      fill_in 'user_password', with: 'blabla2'
      fill_in 'user_password_confirmation', with: 'blabla2'
      click_button 'Sign up'
end