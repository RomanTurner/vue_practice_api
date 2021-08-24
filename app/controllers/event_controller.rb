class EventController < ApplicationController
    def index   
    @events = Event.all
    render json: @events
    end
end
