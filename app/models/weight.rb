class Weight < ApplicationRecord
  belongs_to :disease
  belongs_to :symptom
end
