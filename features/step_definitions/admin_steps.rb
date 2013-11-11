Given /^there are the following users:$/ do |table|
	table.hashes.each do |attributes|
		unconfirmed = attributes.delete("unconfirmed") == "true"
		admin = attributes.delete("admin") == "true"
		@user = User.create!(attributes)
		@user.admin = admin
		@user.save
	end
end

When(/^I visit the admin page$/) do
	visit '/admin'
end

