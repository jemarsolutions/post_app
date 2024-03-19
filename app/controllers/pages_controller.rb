class PagesController < ApplicationController
  # before_action :authenticate_user!
  def home
    @posts = Post.all.limit(3).order('created_at DESC')
    @subscriber = Subscriber.new
  end
end
