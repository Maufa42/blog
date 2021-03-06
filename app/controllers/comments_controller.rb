class CommentsController < ApplicationController
  http_basic_authenticate_with name: "123", password: "123", only: :destroy

  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    redirect_to article_path(@article)
  end

 def destroy
  # debugger
  # @article = Article.find(params[:article_id])
  @comment = Comment.find(params[:id])
  @comment.destroy

  redirect_to  article_path
 end


  private
  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end

end
