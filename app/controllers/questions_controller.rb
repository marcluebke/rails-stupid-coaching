class QuestionsController < ApplicationController
  def ask
  end

  def answer
  @reply = params[:question]
    unless @reply.nil?
      if @reply == "i am going to work right now!"
        @answer = "Great!"
        elsif @reply.end_with?("?")
        @answer = "Silly question, get dressed and go to work!"
        else
        @answer = "I don't care, get dressed and go to work!"
      end
    end
  end
end

