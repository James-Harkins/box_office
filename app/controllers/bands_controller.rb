class BandsController < ApplicationController 
    def index 
        @bands = Band.all 
    end

    def new 
    end

    def create 
        band = Band.new(name: params[:name])
        if band.save
            redirect_to "/bands/#{band.id}/shows"
        else
            redirect_to "/bands/new"
        end
    end
end