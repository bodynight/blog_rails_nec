require 'rails_helper'

RSpec.describe Article, type: :model do

  describe "validation" do
    it {should validate_presence_of :title}
    it {should validate_presence_of :text}
  end

  describe "association" do
    it { should have_many :comments}
  end

  describe "#subject" do
    it "Returns the article title" do
      # создаем обьект article хитрым способом
      article = create(:article, title: 'Lorem Ipsum')
      # assert, провкрка
      expect(article.subject).to eq 'Lorem Ipsum'
    end
  end

  describe "#last_comment" do
    it "Returns the last comment" do
      #создаем статью с коментариями
      article = create(:article_with_comments)

      #проверка
      expect(article.last_comment.body).to eq "comment body 3"
    end
  end


end
