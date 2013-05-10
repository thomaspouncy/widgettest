class WelcomeController < ApplicationController
  require 'oauth2'
  layout "application"

  def redirect_test
    redirect_to "http://www.shareandtelldev.com:3000/home/test_icon" and return
  end

  def api_test
    key = "e2bvnr4l7x0ys12kwyg8w0bzv"
    secret = "cqn35gz5smi2kf50af2zeecim"
    site = "http://api.shareandtelltest.com"
    token_url_path = "/v1/rest_api/oauth/access_token"
    token_url = "#{site}#{token_url_path}"
    client = OAuth2::Client.new(key, secret, :site => site, :token_url => token_url)

    token = client.get_token({'client_id' => client.id, 'client_secret' => client.secret, 'grant_type' => 'client_credentials'})

    response = token.get('/v1/rest_api/account/valid_token')
    puts response.body
    render :text => response.body
  end

  def mobile_test
    render :layout=>false
  end
end
