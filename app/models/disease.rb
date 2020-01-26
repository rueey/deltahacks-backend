class Disease < ApplicationRecord
  has_many :weights
  has_many :symptoms, through: :weights

  has_many :scores
  has_many :users, through: :scores
end
