class CandidatesController < ApplicationController
  before_action :load_user

  def index
    render json: [ { first:'Hillary',last:'Clinton' } ]
  end
end
