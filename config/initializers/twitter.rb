# client = Twitter::REST::Client.new do |config|
#   config.consumer_key    = "eOzCNNzRnnF5rBfb7xocRpVup"
#   config.consumer_secret = "ZGqgIeku5gYqbKL7kHDrWxBK1FcSQ6dHQRbQXw8IixqeGNoMIC"

# end

# config = {
#   consumer_key:    "eOzCNNzRnnF5rBfb7xocRpVup",
#   consumer_secret: "ZGqgIeku5gYqbKL7kHDrWxBK1FcSQ6dHQRbQXw8IixqeGNoMIC",
# }

# client = Twitter::REST::Client.new(config)


# Exchange your oauth_token and oauth_token_secret for an AccessToken instance.
def prepare_access_token(oauth_token, oauth_token_secret)
    consumer = OAuth::Consumer.new("eOzCNNzRnnF5rBfb7xocRpVup", "ZGqgIeku5gYqbKL7kHDrWxBK1FcSQ6dHQRbQXw8IixqeGNoMIC", { :site => "https://api.twitter.com", :scheme => :header })

    # now create the access token object from passed values
    token_hash = { :oauth_token => oauth_token, :oauth_token_secret => oauth_token_secret }
    access_token = OAuth::AccessToken.from_hash(consumer, token_hash )

    return access_token
end

# Exchange our oauth_token and oauth_token secret for the AccessToken instance.
access_token = prepare_access_token("93456714-Lhcwp2AWLy6XuOq8cihtvvPWkCqqlbupDHR4TrREh", "HqvZFw38sGzVgGgRrSv08AatHzIwurPyZcho6Mu297Sy3")

# use the access token as an agent to get the home timeline
response = access_token.request(:get, "https://api.twitter.com/1.1/statuses/home_timeline.json")