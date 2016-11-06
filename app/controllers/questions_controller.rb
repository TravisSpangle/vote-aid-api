class QuestionsController < ApplicationController
  def index
    render json: Question.all.map { |q| {q.id => q.question} }
  end
end
