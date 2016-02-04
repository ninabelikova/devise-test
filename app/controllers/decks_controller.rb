class DecksController < ApplicationController
  before_action :authenticate_user!, only: [:create, :destroy]

  def create
    @deck = current_user.decks.build(deck_params)
    if @deck.save
      flash[:notice] = "Successfully created..."
      redirect_to root_url
    else
      render root_url
    end
  end

  def show
    @deck = Deck.find(params[:id])
    @new_question = Question.new
    @questions = @deck.questions
  end

  def destroy
  end

  private

  def deck_params
    params.require(:deck).permit(:name)
  end

end
