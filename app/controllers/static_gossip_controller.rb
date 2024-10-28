class StaticGossipController < ApplicationController
  def gossip
    @gossip = Gossip.find(params[:id])
  end
end


