class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :description, :host_id, :location, :image
  has_many :invites
  belongs_to :host, {class_name: 'User'}
  has_many :users, through: :invites
  has_many :tasks, through: :invites
  has_many :assignments, through: :invites
  attribute :formatted_date do
    object.date.strftime("%A, %B %e, %Y")
  end
  attribute :time do
    object.date.localtime.strftime("%I:%M%p")
  end
end
