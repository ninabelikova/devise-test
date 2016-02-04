class PagesController < ApplicationController

  def index
    if current_user
      @decks = current_user.decks
      @new_deck = Deck.new
    end
  end
end
