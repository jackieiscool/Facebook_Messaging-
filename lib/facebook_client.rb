module FacebookClient
  class << self

    def get_friends
      user.friends
    end

    private
    #connects to facebook
    def connect_to_facebook(user)
      user = FacebookOAuth::Client.new(
                  :consumer_key => '470247609666517',
                  :consumer_secret => 'ea8eb2558cc6b916cc9ff13ab5458fc8',
                  :token => user[:auth_token],
                  :secret => user[:auth_secret]
                  )
      user.fetch
    end