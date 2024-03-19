# app/controllers/subscribers_controller.rb
class SubscribersController < ApplicationController

  def index
    @subscribers = Subscriber.all
  end

  def create
    @subscriber = Subscriber.new(subscriber_params)
    if @subscriber.save
      flash[:notice] = 'You are added as a subscriber! Congratulations'
    else
      flash[:alert] = 'Failed to subscribe. Please try again.'
    end
    redirect_to root_path
  end

  def destroy
    @subscriber = Subscriber.find(params[:id])
    @subscriber.destroy
    redirect_to subscribers_url, notice: 'Subscriber was successfully deleted.'
  end

  private

  def set_posts
    @posts = Post.all.limit(3).order('created_at DESC')
  end

  def subscriber_params
    params.require(:subscriber).permit(:email)
  end
  
end
