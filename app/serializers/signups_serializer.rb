class SignupsSerializer < ActiveModel::Serializer
  attributes :time, :camper_id, :activity_id

  has_many :activities
end
