class HomeController < ApplicationController
  def index
    fb_service = FacebookService.new
    puts fb_service.test
  end

  private
  def get  
  end
end
