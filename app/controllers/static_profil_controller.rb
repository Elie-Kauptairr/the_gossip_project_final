class StaticProfilController < ApplicationController
  def profil
    @user = Gossip.find(params[:user])
  end
end
