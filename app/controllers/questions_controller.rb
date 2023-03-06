class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @query = params[:query]

    if params[:query] == "I am going to work"
      @answer = "Great!"
    elsif params[:query].end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
