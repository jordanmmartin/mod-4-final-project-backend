class AssignmentSerializer < ActiveModel::Serializer
  attributes :id, :task_id, :invite_id
  belongs_to :task
  belongs_to :invite
  belongs_to :user
end
