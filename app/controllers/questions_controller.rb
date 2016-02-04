class QuestionsController < ApplicationController

  def create
    @deck = Deck.find(params[:deck_id])
    @question = @deck.questions.build(question_params)
    if @question.save
      flash[:notice] = "Successfully created..."
      redirect_to @deck
    else
      render @deck
    end
  end

  def destroy
  end

  private
  def question_params
    params.require(:question).permit(:text, :answer1, :answer2, :answer3)
  end

end
