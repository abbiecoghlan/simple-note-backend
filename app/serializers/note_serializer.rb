class NoteSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :archived, :user_id
  belongs_to :user
end
