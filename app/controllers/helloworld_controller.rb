class HelloworldController < ApplicationController
  def show
    render json: {message:'hello world'}
  end
end
