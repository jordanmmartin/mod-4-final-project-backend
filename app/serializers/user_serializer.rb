class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :city, :state, :username, :image
  has_many :invites
  has_many :event_hostings, {class_name: 'Event', foreign_key: 'host_id' }
  has_many :event_attendings, {through: :invites, source: :event}
  has_many :tasks, through: :invites
  has_many :assignments, through: :invites
  attribute :name do
    "#{object.first_name} #{object.last_name}"
  end
  attribute :location do
    "#{object.city}, #{object.state}"
  end
end
