require "rails_helper"

RSpec.describe MyBloggerSchema do

  describe "displays the article data" do
    context "when there is an article" do
      let!(:article) { create(:article, :with_comments) }
      let!(:query_string) do %|{
        article(slug: "#{article.slug}") {
          title
          body
          slug
          comments {
            body
          }
        }
      }|
      end
      let!(:result) { MyBloggerSchema.execute(query_string) }

      it "returns the article data" do
        article_result = result["data"]["article"]
        comment = result["data"]["article"]["comments"]

        expect(article_result["title"]).to eq(article.title)
        expect(comment.first["body"]).to eq(article.comments.first.body)
      end
    end
  end

  describe "all articles" do
    context "displays all articles" do
      let!(:articles) { create_list(:article, 10) }
      let!(:query_string) do %|{
        articles {
          title
          body
        }
      }|
      end
      let!(:result) { MyBloggerSchema.execute(query_string) }

      it "returns all articles array" do
        articles_result = result["data"]["articles"]

        expect(articles.count).to equal(10)
      end
    end
  end

end