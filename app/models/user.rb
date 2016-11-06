class User < ApplicationRecord
  require 'digest'
  serialize :answer_key, Hash

  has_many :answers

  validates :first, :last, :email, :state, presence: true

  def self.login(first:, last:, email:, state:)
    token = Digest::SHA256.hexdigest(first + last + email + state)
    User.find_or_create_by(first:first, last:last, email:email, state:state, token:token).token
  end
end
