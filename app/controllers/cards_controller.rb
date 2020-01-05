class CardsController < ApplicationController
  def index
    @cards = Card.all
  end

  def show
    @card = Card.find(params[:id])
    @card_image = "https://fecipher.jp/wp-content/uploads/cards/images/" + @card.Imagefile
  end
end
