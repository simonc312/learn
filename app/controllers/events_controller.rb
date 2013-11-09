class EventsController < ApplicationController

	def edit
		@event = Event.find(params[:id])
	end
	
	def new

	end
'''
  def oldcreate
    render text: params[:event].inspect
    puts "CREATE WAS CALLED-----------------------------------------------------------"
    eventhash = Hash.new()
    startDate = params[:event][:start_date]
    endDate = params[:event][:end_date]
    startTime = params[:event][:start_time]
    endTime = params[:event][:end_time]
    eventhash[:name] = params[:event][:title]
    eventhash[:description] = params[:event][:description]
    eventhash[:location] = params[:event][:location]

    eventhash[:start_at] = DateTime.new(startDate.year, startDate.month, startDate.day, startTime.hour, startTime.min)
    eventhash[:end_at] = DateTime.new(endDate.year, endDate.month, endDate.day, endTime.hour, endTime.min)

    @event = Event.create!(eventhash[:event])

    flash.keep[:notice] = "#{@event.name} was successfully created."
    redirect_to calendar_path
  end
'''
  def create
    #render text: params[:event].inspect
    puts "CREATE WAS CALLED-----------------------------------------------------------"
    eventhash = Hash.new()
    startYear = params[:event]['start_time(1i)'].to_i
    startMonth = params[:event]['start_time(2i)'].to_i
    startDay = params[:event]['start_time(3i)'].to_i
    startHour = params[:event]['start_time(4i)'].to_i
    startMin = params[:event]['start_time(5i)'].to_i

    endYear = params[:event]['end_time(1i)'].to_i
    endMonth = params[:event]['end_time(2i)'].to_i
    endDay = params[:event]['end_time(3i)'].to_i
    endHour = params[:event]['end_time(4i)'].to_i
    endMin = params[:event]['end_time(5i)'].to_i

    eventhash[:name] = params[:event][:title]

    eventhash[:start_at] = DateTime.new(startYear, startMonth, startMonth, startMonth, startMin)
    eventhash[:end_at] = DateTime.new(endYear, endMonth, endDay, endHour, endMin)
    puts eventhash
    @event = Event.new(eventhash)
    @event.description = params[:event][:description]
    @event.location = params[:event][:location]
    @event.save
    flash.keep[:notice] = "#{@event.name} was successfully created."
    redirect_to calendar_path
  end

	
end
