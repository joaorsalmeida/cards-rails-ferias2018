class HomeController < ApplicationController
  def index
    @cards = Card.all()
  end

  def ver_traducao
    id = params[:id]
    @card = Card.find(id)
  end

  def saiba_mais

  end
end
