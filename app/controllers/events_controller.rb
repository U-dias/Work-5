class EventsController < ApplicationController
  
  def index
    @events = Event.all
  end
  
  def new
    @event = Event.new
  end
  
  def edit
    # binding.pry
    @event = Event.find_by(id: params[:id])
  end
  
  def update
    binding.pry
    @event = Event.find(params[:id])
    @event.update(update_params)
    redirect_to '/events/index'
  end
  
  def show
    @event = Event.find_by(id: params[:id])
  end
  
  def create
    @event = Event.new(event_params)
    if params[:back]
      render :new
    else @event.save!
      redirect_to @event
    end
  end
  
  def confirm
    @event = Event.new(event_params)
    render :new if @event.invalid?
  end
  
  def destroy
    event = event.find(params[:id])
    event.destroy
  end
  
  private
  
  def event_params
    params.require(:event).permit(:title, :content, :start_time)
  end
  
  def update_params
    params.require(:event).permit(:titel,:content)
  end
end
