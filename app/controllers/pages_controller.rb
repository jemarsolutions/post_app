class PagesController < ApplicationController
  before_action :authenticate_user!
  def home
    @posts = Post.all.limit(3)
  end
end
