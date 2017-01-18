class EventsController < ApplicationController
    before_action :authenticate_user!
    
    def create
        @event = Event.new(event_params) do |event|
            event.user = current_user
        end
        @event.save
    end
    
    def update
        @event = Event.find(params[:id])
        @event.update(event_params)
        redirect_to url_for(:controller => :home, :action => :hello)
    end
    
    def edit
        @event = Event.find(params[:id])
    end
    
    def destroy
        @event = Event.find(params[:id])
        @event_id = params[:id]
        flash[:notice] = "Deleted Event"
    end
    
    private
    def event_params
        params.require(:event).permit(:event_text, :time)
    end
end
