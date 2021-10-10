class CommentsController < ApplicationController
  before_action :authenticate_user!, :only => [:create]

  def create
    @article = Article.find(params[:article_id])
    coment = @article.comments.new 
    coment.author = current_user.username
    coment.body = comment_params[:body]
    coment.save

    redirect_to article_path(@article)
  end
private
  def comment_params
    params.require(:comment).permit( :body)

  end

end
