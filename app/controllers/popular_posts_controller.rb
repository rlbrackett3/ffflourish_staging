class PopularPostsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @title = "popular posts"
    @popular_posts = Post.popular.paginate(:page => params[:page], :per_page => 10)
  end

  def show
  end

end
