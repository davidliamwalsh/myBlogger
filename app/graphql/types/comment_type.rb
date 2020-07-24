module Types
  class CommentType < GraphQL::Schema::Object
    description "a comment for an article"
    field :id, String, null: false
    field :name, String, null: false
    field :body, String, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :article, ArticleType, null: false
  end
end