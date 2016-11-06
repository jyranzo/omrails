class FeedController < ApplicationController
  before_action :authenticate_user!, except: [:create, :destroy]

  def show
  	@tweets = Tweet.where(user: current_user.all_following)
  end
end
