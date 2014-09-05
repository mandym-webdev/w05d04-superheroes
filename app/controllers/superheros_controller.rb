class SuperherosController < ApplicationController

  def index
    @heros = Superhero.all
  end

  def show
    @hero = Superhero.find(params[:id])
  end

  def new
    @hero = Superhero.new
  end

  def create
    @hero = Superhero.new(hero_params)
    if @hero.save
      redirect_to @hero
    end
  end

  def update
    @hero = Superhero.new(hero_params)
    if @hero.update(hero_params)
      redirect_to '/'
  end

  def destroy
    @hero = Superhero.find(params[:id])
    @hero.destroy
    redirect_to '/'
  end

  private
  def hero_params
    params.require(:superhero).permit(:name, :cape, :super_power, :image)
  end

end



  