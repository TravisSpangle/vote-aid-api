class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :question
  serialize :answer_key, Hash
end
