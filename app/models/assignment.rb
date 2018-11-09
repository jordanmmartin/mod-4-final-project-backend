class Assignment < ApplicationRecord
  belongs_to :task
  belongs_to :invite
  belongs_to :user
end
