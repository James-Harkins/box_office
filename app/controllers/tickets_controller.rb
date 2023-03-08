class TicketsController < ApplicationController
    def new 
        @show = Show.find(params[:show_id])
    end

    def create 
        show = Show.find(params[:show_id])
        cost = params[:quantity].to_i * show.ticket_price
        seller = Musician.find_by(name: params[:musician])
        ticket = Ticket.new(
            buyer: params[:buyer],
            quantity: params[:quantity],
            cost: cost,
            musician_id: seller.id,
            show_id: show.id  
            )
        if ticket.save 
            redirect_to "/bands/#{show.band_id}/shows/#{show.id}"
        else
            redirect_to "/bands/#{show.band_id}/shows/#{show.id}/tickets/new"
        end
    end
end