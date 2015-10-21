class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def new

  end

  def edit
  end
  
 def create
    @comment = Comment.create({ body: params[:comment][:body], user_id: session[:user_id], post_id: params[:comment][:post_id]})
	redirect_to post_path(params[:comment][:post_id])
 end

  def destroy
  end
end 