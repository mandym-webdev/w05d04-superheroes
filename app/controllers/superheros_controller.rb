class SuperherosController < ApplicationController

  def index
    @heros = Superhero.all
  end

  

end