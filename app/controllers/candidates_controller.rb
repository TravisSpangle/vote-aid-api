class CandidatesController < ApplicationController
  before_action :load_user

  def index
    render json: { candidates: closest_candidate }
  end

  private

  def closest_candidate
    candidates = Array.new(10) { [] }
    Candidate.all.each do |candidate|
      # Rails.logger.debug "Measure User: #{@user.answer_key.to_a} and #{candidate.answers.to_a} is #{(candidate.answers.to_a - @user.answer_key.to_a).length}"
      candidates[(candidate.answers.to_a - @user.answer_key.to_a).length] << candidate.name
    end
    candidates.find { |c| c.length > 0 }
  end
end
