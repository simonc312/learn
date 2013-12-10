And /there is only one user with the email "(.*)" in the database/ do |email|
  User.where(:email => email).length == 1
end

And /there is the user with email "(.*)" in the database/ do |email|
	User.create!(:email => email, :password => 'password123')
end

And /I am logged in as "(.*)"/ do |email|
  visit '/users/sign_in'
  
  fill_in 'Email', :with => email
  fill_in 'Password', :with => 'password123'
  click_button 'Sign in'
  if page.respond_to? :should
    page.should have_content('Dashboard')
  else
    assert page.has_content?('Dashboard')
  end
end
And /I log out/ do
    step 'I follow "Sign out"'
end

Given /the following users exist/ do |users_table|
  users_table.hashes.each do |user|
    #user.password = '12345678'
    User.create!(user)
  end
end


