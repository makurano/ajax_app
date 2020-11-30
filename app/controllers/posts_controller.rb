class PostsController < ApplicationController

  def index
    # インスタンス変数 = テーブル名.レコードのid
    @posts = Post.all.order(id: "DESC")
  end

  def create
    Post.create(content: params[:content])
    redirect_to action: :index
  end

end
