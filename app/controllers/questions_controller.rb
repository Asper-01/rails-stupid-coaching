class QuestionsController < ApplicationController
  def ask
  end

  def answer
    answer_value = params[:answer]
    @question = answer_value
    @answer = calculate_coach_answer(answer_value)
  end

  private

  def calculate_coach_answer(answer)
    if answer == "I am going to work"
      "Great!"
    elsif answer.end_with?("?")
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
