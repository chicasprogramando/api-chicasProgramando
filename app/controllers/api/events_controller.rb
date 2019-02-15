class Api::EventsController < ApiController

	def index
    events = Event.all

    render json: {
      events: events.as_json(only: [:date, :place, :name])
    }
	end
	
	def show
    @event = Event.find(params[:id])
 
    respond_to do |format|
      format.html
      format.json { render :json => @event }
    end
  end
end
