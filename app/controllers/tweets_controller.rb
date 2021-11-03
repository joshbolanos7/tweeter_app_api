class TweetsController < ApplicationController

    def index
        tweets = Tweet.all
        render json: {status: 200, tweets: tweets}
    end

    def show
        found_tweet = Tweet.find(params[:id])
        render json: { status: 200, tweet: found_tweet}
    end

end