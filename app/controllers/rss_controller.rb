class HomeController < ApplicationController
  layout false

  def index
    @posts = Post.order(created_at: :desc)
  end
end