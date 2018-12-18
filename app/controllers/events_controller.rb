class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def new
  end

  def edit
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.new(params.require(:event).permit(:name, :description, :reoccur, :reoccurType, :startMonth, :startDate, :endMonth, :endDate))

    @event.save

      @event.occurrenceLogic


 redirect_to @event
  end

  def update
    @event = Event.find(params[:id])

    if @event.update(params.require(:event).permit(:name, :description, :reoccur, :reoccurType, :startMonth, :startDate, :endMonth, :endDate))
      # @event.update(:name => name)
      @event.destroyOccurrence
      @event.occurrenceLogic
      redirect_to @event
    else
      render 'edit'
    end
  end

  def show
    @event = Event.find(params[:id])
    @occur = Occurrence.all
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroyOccurrence
    @event.destroy

    redirect_to events_path
  end

private
  def event_params
    params.require(:event).permit(:name, :description, :reoccur, :reoccurType, :startMonth, :startDate, :endMonth, :endDate)
  end

end
