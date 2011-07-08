class PostsController < ApplicationController

  before_filter :authenticate_admin!
  
  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
    end
  end
end
