class QuestionsController < ApplicationController
  def ask; end

  def answer
    @question = params[:question]
    @answer = coach_answer(@question)
  end

  private

  def coach_answer(your_message)
    return 'Great!' if your_message == 'I am going to work right now!'

    return 'Silly question, get dressed and go to work!' if your_message.end_with?('?')

    "I don't care, get dressed and go to work!"
  end
end
