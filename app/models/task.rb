class Task < ApplicationRecord
  belongs_to :invite
  has_many :assignments
end
