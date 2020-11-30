class PostsController < ApplicationController

  def index
    # インスタンス変数 = テーブル名.レコードのid
    @posts = Post.all
  end

  def new
  end

  def create
    Post.create(content: params[:content])
  end

end
