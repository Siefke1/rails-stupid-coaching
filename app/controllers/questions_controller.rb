class QuestionsController < ApplicationController

  def ask

  end

  def answer
    if params[:answer].downcase == "i am going to work"
      @answer = "Great!"
    elsif params[:answer][-1] == "?"
      @answer = "Silly question, get dressed and go to work!"
    elsif params[:answer] == ""
      @answer = "Thats not a question.."
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
