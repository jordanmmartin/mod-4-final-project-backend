class InviteSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :event_id, :status
  belongs_to :user
  belongs_to :event
  has_many :tasks
  has_many :assignments
end
