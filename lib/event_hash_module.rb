module Event_Hash

  def initialize

    eventhash = Hash.new()
    startDate = params[:event]['start_date']
    startTime = params[:event]['start_time']

    endDate = params[:event]['end_date']
    endTime = params[:event]['end_time']
    eventhash[:name] = params[:event][:name]
    eventhash[:description] = params[:event][:description]
    eventhash[:location] = params[:event][:location]
    eventhash[:user_id] = current_user.id
    eventhash[:color] = params[:event][:color]
    begin
    eventhash[:start_at] = DateTime.strptime(startDate+startTime,'%m/%d/%Y%l:%M %P')
    eventhash[:end_at] = DateTime.strptime(endDate+endTime,'%m/%d/%Y%l:%M %P')
    rescue ArgumentError
	return false 
    end

  return eventhash
  end 
end
