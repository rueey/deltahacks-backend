class Symptom < ApplicationRecord
  has_many :weights
  has_many :diseases, through: :weights
end
