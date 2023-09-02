class ActivitiesSerializer < ActiveModel::Serializer
  attributes :id, :name, :difficulty

  belongs_to :signups
  belongs_to :campers
end
