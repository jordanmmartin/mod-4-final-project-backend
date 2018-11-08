class Event < ApplicationRecord
  has_one :task_list
  has_many :invites
  has_many :users, through: :invites
  has_many :tasks, through: :task_list
end
