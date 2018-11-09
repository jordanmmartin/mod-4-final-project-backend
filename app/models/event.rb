class Event < ApplicationRecord
  has_many :invites
  belongs_to :host, {class_name: 'User'}
  has_many :users, through: :invites
  has_many :tasks, through: :invites
  has_many :assignments, through: :invites
end
