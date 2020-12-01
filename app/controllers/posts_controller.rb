class PostsController < ApplicationController

  def index
    # インスタンス変数 = テーブル名.レコードのid
    @posts = Post.all.order(id: "DESC")
  end

  def create
    Post.create(content: params[:content], checked: false)
    render json:{ post: post }
  end

  def checked
    post = Post.find(params[:id])
    if post.checked
      post.update(checked: false)
    else
      post.update(checked: true)
    end

    item = Post.find(params[:id])
    render json:{ post: item }
  end

end
