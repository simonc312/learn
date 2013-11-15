Given /the following events exist/ do |events_table|
  events_table.hashes.each do |event|
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that event to the database here.
		puts event
		Event.create!(event)
  end
	#puts events_table.hashes.size
	assert events_table.hashes.size == event.all.size
  #flunk "Unimplemented"
end

Given /the following users exist/ do |users_table|
  users_table.hashes.each do |user|
    User.create!(user)
  end
end
