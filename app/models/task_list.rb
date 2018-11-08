class TaskList < ApplicationRecord
  belongs_to :event
  has_many :tasks
end
