module Types
  class QueryType < Types::BaseObject
    # field :all_users, UserType, null: false
    # field :all_comments, CommentType, null: false
    # field :all_posts, PostType, null: false
    #
    # def all_users
    #   User.all
    # end
    # def all_comments
    #   Comment.all
    # end
    # def all_posts
    #   Post.all
    # end
    field :user, UserType, null: true, description: "Retrieve a user by ID" do
      argument :id, ID, required: true, description: 'A user id'
    end

    def user(id:)
      User.where(id: id).first
    end

    field :post, PostType, null: true, description: "Retrieve a post by ID" do
      argument :id, ID, required: true, description: 'A post id'
    end

    def post(id:)
      Post.where(id: id).first
    end

    field :comment, CommentType, null: true, description: "Retrieve a comment by ID" do
      argument :id, ID, required: true, description: 'A comment id'
    end

    def comment(id:)
      Comment.where(id: id).first
    end
  end
end
