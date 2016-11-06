class Candidate < ApplicationRecord
  serialize :answers, Hash
end
