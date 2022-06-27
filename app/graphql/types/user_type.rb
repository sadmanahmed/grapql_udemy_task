class Types::UserType < Types::BaseObject
  description "User queries"
  field :id, ID, null: false
  field :first_name, String, null: false
  field :last_name, String, null: false
  field :street, String, null: false
  field :number, Int, null: false
  field :city, String, null: false
  field :postcode, Int, null: false
  field :country, String, null: false
  field :full_address, String, null: false
  field :full_name, String, null: false
  field :posts, [PostType], null: true
end