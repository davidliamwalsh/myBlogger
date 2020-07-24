require "rails_helper"

RSpec.describe MyBloggerSchema do

  describe "adding comments" do
    context "adding a comment to an article" do

      context = {
        authorised: true
      }

      let!(:result) { MyBloggerSchema.execute(query_string, context: context) }

      let!(:article) { create(:article) }

      let(:query_string) {
        %|
        mutation addComment {
          addComment(slug: "#{article.slug}", name: "bob", body: "Testing Comment") {
            article {
              id
              title
              body
              comments {
                name
                body
              }
            }
          }
        }| 
      }

      it "returns the article data" do
        article_result = result["data"]["addComment"]["article"]
        comments = result["data"]["addComment"]["article"]["comments"]
        
        expect(article_result["title"]).to eq(article.title)
        expect(comments.first["body"]).to match("Testing Comment")
      end
    end
  end
end