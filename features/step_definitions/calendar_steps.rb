$start_dt = DateTime.now
new_min = $start_dt.min+1
$end_dt = DateTime.now.change(:min => new_min )

Given /^the following events exist/ do |events_table|
  events_table.hashes.each do |event|
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that event to the database here
    e = Event.new(event)
    e.start_at = $start_dt
    e.end_at = $end_dt
    e.save
  end
end

And /^I fill New Event Form for "(.*)"/ do |eventname| 
  sd = $start_dt.strftime('%m/%d/%Y')
  st = $start_dt.strftime('%l:%M %P')
  ed = $end_dt.strftime('%m/%d/%Y')
  et = $end_dt.strftime('%l:%M %P')
  steps %Q{
  When I fill in "Event Name" with "#{eventname}"
  And I fill in "event[start_date]" with "#{sd}"
  And I fill in "event[start_time]" with "#{st}"
  And I fill in "event[end_date]" with "#{ed}"
  And I fill in "event[end_time]" with "#{et}"
  And I choose "event_color_red"
  }
end 


