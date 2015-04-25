class ListSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :created_at, :user_id

  def created_at
    object.created_at.strftime('%B %d, %Y')
  end

end
