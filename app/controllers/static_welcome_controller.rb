class StaticWelcomeController < ApplicationController
  def welcome
    @welcome = params[:hide]
  end
end
