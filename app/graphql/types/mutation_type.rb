module Types
  class MutationType < Types::BaseObject
    
    field :addComment, CommentType, null: true do
      description "Adds a comment to an article"
      argument :slug, String, required: true
      argument :name, String, required: true
      argument :body, String, required: true
    end

    def add_comment(slug:, name:, body:)
      article = Article.friendly.find(slug)
      article.comments.create(name: name, body: body)
    end 
  end
end
