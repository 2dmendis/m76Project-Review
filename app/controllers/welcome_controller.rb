class WelcomeController < ApplicationController
  def index
    # @event = Event.all
    # @occur = Occurrence.all
    @occur = Occurrence.all 

  end

  def create
    # @event = Event.new(event_params)
    # @event.save
    #
    # @occur = Occurrence.new(:eventID = @event.id, :month, :date)

  end

  def show

  end

  # private
  # def event_params
  #   params.require(:event).permit(:name, :description, :reoccur, :reoccurType, :startTime, :endTime)
  # end

end
