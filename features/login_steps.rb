Given /^I signed up as "(\w+)" with "(\w+)"$/ do |name, pwd|
  User.create username: name, password: pwd, counter: 1
end

When /^I login up as "(\w+)" with "(\w+)"$/ do |name, pwd|
  fill_in 'username_input', with: name
  fill_in 'password_input', with: pwd
  click_button 'login_btn'
end
