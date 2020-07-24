require "rails_helper"

RSpec.describe "Articles", type: :feature do
  include BasicAuthHelper

  before(:each) do
    log_in
  end

  context "creating an article" do

    describe "viewing all articles" do
      it "should show a list of articles" do
        visit admin_articles_path

        create_list(:article, 10)
      
        expect(page).to have_content(@articles)
      end
    end
    
    describe "with valid data" do
      it "should create an article" do
        visit new_admin_article_path

        fill_in 'Title', with: 'My Title'
        fill_in 'Body', with: 'some text'

        click_on 'Submit'

        expect(page).to have_content("My Title")
      end
    end


    describe "with invalid data" do
      it "should raise an error" do
        visit new_admin_article_path

        fill_in 'Title', with: 'My Title'

        click_on 'Submit'

        expect(page).to have_content("Body can't be blank")
      end
    end       
  end
  
  context "editing an article" do 

    describe "with valid data" do
      let!(:article) { create(:article) }

      it "should update the record" do
        visit edit_admin_article_path(article)

        fill_in 'Title', with: 'My Title'
        fill_in 'Body', with: 'some text'

        click_on 'Submit'

        expect(page).to have_content("My Title")
      end
    end

    describe "with invalid data" do
      let!(:article) { create(:article) }

      it "should raise an error" do
        visit edit_admin_article_path(article)

        fill_in 'Title', with: ''
        fill_in 'Body', with: 'some text'

        click_on 'Submit'

        expect(page).to have_content("Title can't be blank")
      end
    end        
  end

  describe "deleting an article" do
    let!(:article) { create(:article) }
    
    it "should remove the record" do
      visit admin_articles_path

      click_on 'delete'

      expect(page).to_not have_content(article.title)
    end
  end 
end