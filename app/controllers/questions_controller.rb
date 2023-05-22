class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = stupid_coach(@question)
  end

  private

  def stupid_coach(str)
    if is_question?(str)
      ANSWER_QUESTION
    elsif str == QUESTION_WORK
      ANSWER_WORK
    else
      ANSWER_ELSE
    end
  end

  def question?(str)
    str&.end_with?('?') || false
  end
end
