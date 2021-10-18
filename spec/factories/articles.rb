FactoryGirl.define do
  factory :article do
    title  "Article title"
    text "article text"

    #создаем фабрику с названием article_with_comments
    #для создания статьи с несколькими коментариями
    factory :article_with_comments do
      #после создания article
      after :create do |article, evaluator|
        #cоздаем список из 3-х коментариев
        create_list :comment, 3, article: article
      end
    end

  end
end
