class WelcomeController < ApplicationController
  require 'oauth2'
  layout "application"


  def api_test
    key = "39zuq9yiok6iaqek7b7zhy2vk"
    secret = "79w7aplwms7xezs1lix4bnnxo"

    client = OAuth2::Client.new(key, secret)

    render :text => client

  end
end
