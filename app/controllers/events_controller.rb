class EventsController < ApplicationController
  def index
    @events = Event.all
  end
  
  def show
    @event = Event.find(params[:id])
  end
  
  def new
    @event = Event.new
  end
  
  def edit
    @event = Event.find(params[:id])
  end
  
  def create
    @event = Event.new(event_params)
   
    if @event.save
      redirect_to @event
    else
      render 'new'
    end
  end
  
  def invitation
    @event = Event.find_by_id(params[:event_id])
    
    render template: 'reports/invitation-uye', layout: 'print'
  end
  
  def update
    @event = Event.find(params[:id])
   
    if @event.update(event_params)
      redirect_to @event
    else
      render 'edit'
    end
  end
  
  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    
    flash[:success] = "Başarıyla silindi"
    redirect_to events_path
  end
  
  private
  def event_params
    params.require(:event).permit(:title, :description, :rule_id, :period_id, { :student_ids => [] })
  end
end
