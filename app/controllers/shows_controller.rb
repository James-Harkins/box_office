class ShowsController < ApplicationController
    def index 
        @band = Band.find(params[:band_id])
        @shows = @band.shows.order(date: :desc)
    end

    def show 
        @show = Show.find(params[:show_id])
    end

    def new 
        @band = Band.find(params[:band_id])
    end

    def create 
        show_date = "#{params["event_date(1i)"]}-#{params["event_date(2i)"]}-#{params["event_date(3i)"]}"
        show = Show.new(
            date: Date.parse(show_date),
            venue: params[:venue],
            ticket_price: params[:ticket_price].to_i,
            band_id: params[:band_id]
        )
        if show.save 
            redirect_to "/bands/#{params[:band_id]}/shows"
        else
            redirect_to "/bands/#{@band.id}/shows/new"
        end
    end
end