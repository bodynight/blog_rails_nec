require 'rails_helper'

feature "Article creatione " do
    before(:example) do
      sign_up
    end

      scenario "allows user to visit new article page" do
        visit new_article_path
        expect(page).to have_content 'New articles'
      end

      scenario "allows create new article" do
        create_new_article
        expect(page).to have_content 'New Article'
      end

      scenario "allows create comment" do
        create_new_article
        fill_in 'comment_body', with: 'Create new comment'
        click_button 'Enter comment'

        expect(page).to have_content 'Create new comment'
      end

      scenario "allows edit article" do
        edit_article

        expect(page).to have_content I18n.t 'articles.edit_article'
      end

      scenario "execute edit article" do
        edit_article
        fill_in 'article_text', with: 'Edit article text'
        click_button 'Save Article'

        expect(page).to have_content 'Edit article text'
      end
end

def create_new_article
  visit new_article_path

        fill_in 'article_title', with: 'New Article'
        fill_in 'article_text', with: 'blablabla'
        click_button 'Save Article'
end

def edit_article
  create_new_article
  click_link 'Edit'
end
