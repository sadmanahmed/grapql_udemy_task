class Types::CommentType < Types::BaseObject
  description "Comments queries"
  field :id, ID, null: false
  field :body, String, null: false
end