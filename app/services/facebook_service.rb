require 'http'

class FacebookService

  def initialize(params)
    @token = params[:token]
    @uid = params[:uid]
    puts 'fb service initialized'
  end

  def get_friends
    puts 'inside get friends'
    make_request('invitable_friends', 'get', 'json')
  end

  private
  def make_request(path, method, format)
    base_url = 'graph.facebook.com/v2.7'
    url = "https://#{base_url}/me/#{path}"
    puts url
    resp = HTTP.get(url, :params => {
        :access_token => @token,
        :method => method,
        :format => format,
        :debug => 'all' })
    puts resp
  end
end