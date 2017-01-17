class EventsController < ApplicationController
    before_action :authenticate_user!
    
    def create
        @event = Event.new(event_params) do |event|
            event.user = current_user
        end
        respond_to do |format|
            format.js
        end
    end
    
    def update
        @event = Event.find(params[:id])
        @event.update(event_params)
        respond_to do |format|
            format.js
        end
    end
    
    def destroy
        @event = Event.find(params[:id])
        @event_id = params[:id]
        respond_to do |format|
            format.js
        end
    end
    
    private
    def event_params
        params.require(:event).permit(:event_text)
    end
end
