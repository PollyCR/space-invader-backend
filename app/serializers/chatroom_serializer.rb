class ChatroomSerializer < ActiveModel::Serializer
  attributes :id, :description, :name
  has_many :messages

end
