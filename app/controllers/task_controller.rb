class TaskController < ApplicationController

	def index
	config = {
	  consumer_key:    "eOzCNNzRnnF5rBfb7xocRpVup",
	  consumer_secret: "ZGqgIeku5gYqbKL7kHDrWxBK1FcSQ6dHQRbQXw8IixqeGNoMIC",
	}

	@client = Twitter::REST::Client.new(config)

	end
end
