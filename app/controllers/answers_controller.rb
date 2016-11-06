class AnswersController < ApplicationController
  before_action :load_user

  def create
    clean_answer        = params[:answer].downcase == 'yes' ? 1 : 0
    @answer             = answer
    @answer.question_id = params[:question_id]
    @answer.value       = clean_answer

    @user.answer_key[params[:question_id].to_i] = clean_answer
    @user.save

    if @answer.save
      render json: { answer: @answer.value, message: 'success' }
    else
      render status: 500
    end
  end

  def answer
    @user.answers.find_by_question_id(params[:question_id]) || @user.answers.new
  end
end
