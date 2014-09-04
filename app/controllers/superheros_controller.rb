class SuperherosController < ApplicationController

  def index
    @heros = Superhero.all
  end

  def show
    @hero = Superhero.find(params[:id])
  end
  

end

