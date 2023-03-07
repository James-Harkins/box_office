class ShowsController < ApplicationController
    def index 
        band = Band.find(params[:band_id])
        @shows = band.shows.order(date: :desc)
    end

    def show 
        @show = Show.find(params[:show_id])
    end
end