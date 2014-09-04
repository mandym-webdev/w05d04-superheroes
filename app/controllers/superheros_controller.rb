class SuperherosController < ApplicationController

  def index
    @heros = Superhero.all
  end

  def show
    @hero = Superhero.find(params[:id])
  end

  def create
    @hero = Superhero.new(hero_params)
    if @hero.save
      redirect_to @hero
    end
  end

  private
  def hero_params
    params.require(:hero).permit(:name, :cape, :super_power, :image)
  end

end



  