class User < ApplicationRecord
  has_many :tasks
  has_many :invites
  has_many :events, through: :invites
end
