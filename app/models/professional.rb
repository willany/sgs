class Professional < ApplicationRecord
  belongs_to :professionalType
  belongs_to :specialty
  belongs_to :microArea
end
