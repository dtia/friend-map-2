require 'http'

class FacebookService
	def test
    HTTP.get("https://github.com").to_s
  end
end