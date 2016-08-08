class FbController < ApplicationController
  def get_token
    fb_params = {
        token: params[:token],
        uid: params[:uid]
    }
    fb_service = FacebookService.new(fb_params)
    fb_service.get_friends

    head :created
  end
end
