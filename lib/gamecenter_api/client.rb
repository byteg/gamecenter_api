module GamecenterApi
  class Client
    attr_accessor :token, :secret_token, :base_url
    DEFAULT_BASE_URL = "http://localhost:3000"
    API_PATH = "api/v1"
    
    def initialize(token, secret_token, base_url = DEFAULT_BASE_URL)
    	self.token, self.secret_token, self.base_url = token, secret_token, base_url
    end

    def game2user(user_id, amount)
    	send_post "#{base_url}/#{API_PATH}/transfers/game2user", { user_id: user_id, amount: amount }
    end

    def user2game(user_id, amount)
    	send_post "#{base_url}/#{API_PATH}/transfers/user2game", { user_id: user_id, amount: amount }
    end

    def game_info
    	send_get "#{base_url}/#{API_PATH}/game"
    end

    def user_info(user_id)
      send_get "#{base_url}/#{API_PATH}/users/#{user_id}"
    end

    def send_notification(user_id, content)
    	send_post "#{base_url}/#{API_PATH}/notifications", { user_id: user_id, content: content }
    end

    private

    def send_post(url, params = {})
    	params.merge!({ token: token, secret_token: secret_token })
    	response = ::RestClient.post url, params
    	JSON.parse(response.body)
    end

    def send_get(url, params = {})
    	params.merge!({ token: token, secret_token: secret_token })
    	response = ::RestClient.get url, params: params
    	JSON.parse(response.body)
    end
  end
end