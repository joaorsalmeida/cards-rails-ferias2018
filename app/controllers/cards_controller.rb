class CardsController < ApplicationController
  def new
    
  end

  def create
    card = params[:card]
    port = card[:portugues]
    ing = card[:ingles]

    s

    #port = params[:card][:portugues]
    puts "Criando o card #{port} => #{ing}"

    c = Card.new(portugues: port, ingles: ing)
    c.save()
    redirect_to "/"
  end

end
