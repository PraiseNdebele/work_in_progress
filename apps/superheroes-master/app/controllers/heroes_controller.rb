class HeroesController < ApplicationController
  def index
    @heroes = ["Batman", "Superman", "Rogue", "Wolverine"]
  end

  def hero
    heroes = { "Batman" => "batarang", "Superman" => "strength", "Rogue" => "flying", "Wolverine" => "claws" }
    @hero = params[:hero]
    @superpower = heroes[@hero]
  end

  def multiple
  end
end
