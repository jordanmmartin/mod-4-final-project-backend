class Invite < ApplicationRecord
  belongs_to :user
  belongs_to :event
  has_many :tasks
  has_many :assignments
end
