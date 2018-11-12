class TaskSerializer < ActiveModel::Serializer
  attributes :id, :invite_id, :name
  belongs_to :invite
  has_many :assignments
end
