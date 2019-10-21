class MessageSerializer < ActiveModel::Serializer
  attributes :id, :content, :chatroom_id, :created_at, :user

  def user
    {
      user_id: self.object.user.id,
      username: self.object.user.username,
    }
  end
end
