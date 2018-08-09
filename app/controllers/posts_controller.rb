class PostsController < ApplicationController
  def index
    @posts = Post.where(respond_id: 0)
    @post = Post.new
  end
  
  def show
    @post = Post.find_by(id: params[:id])
    unless @post
      flash[:notice] = "この投稿は存在しません。"
      redirect_to("/")
    end
  end
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(name: params[:name], email: params[:email], title: params[:title], body: params[:body], respond_id: params[:id])
    if @post.name == ""
      @post.name = "（匿名希望）"
    end
    if @post.save
      if params[:id].to_i == 0
        redirect_to("/posts")
      else
        redirect_to("/posts/show/#{params[:id]}")
      end
    else
      flash[:notice] = "入力内容に不備があります。"
      if params[:id].to_i == 0
        redirect_to("/posts/new")
      else
        redirect_to("/posts/show/#{params[:id]}")
      end
    end
  end

end
