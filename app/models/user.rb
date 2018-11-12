class User < ApplicationRecord
  has_many :invites
  has_many :event_hostings, {class_name: 'Event', foreign_key: 'host_id' }
  has_many :event_attendings, {through: :invites, source: :event}
  has_many :tasks, through: :invites
  has_many :assignments, through: :invites

end
