class AnswersController < ApplicationController
  before_action :load_user

  def create
    @answer             = answer
    @answer.question_id = params[:question_id]
    @answer.value       = params[:answer]

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
