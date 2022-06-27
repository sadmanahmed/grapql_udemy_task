class Types::PostType < Types::BaseObject
  description "Blog Post queries"

  field :id, ID, null: false
  field :body, String, null: false
  field :user, UserType, null: false, description: "The author of the post"

  field :comments, [CommentType], null: false
end