class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_id, :created_at, :list_id

  def created_at
    object.created_at.strftime('%B %d, %Y')
  end

end
