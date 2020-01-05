class DecksController < ApplicationController
  def index
    @decks = Deck.all
  end

  def show
    @deck = Deck.find(params[:id])
  end

  def image_show
    @deck = Deck.find(params[:id])
  end

  def text_show
    @deck = Deck.find(params[:id])
  end

  def combined_show
    @deck = Deck.find(params[:id])
  end

  def create
    @deck = Deck.new
    @deck.name = params[:name]
    @deck.save
    redirect_to(@deck)
  end

  def destroy
    @deck = Deck.find(params[:id])
    @deck.destroy
    redirect_to '/decks'
  end

  def add_card
    @deck = Deck.find(params[:deck_id])
    card = Card.find(params[:card_id])
    @deck.cards.append(card)
    redirect_to(@deck)
  end

end
