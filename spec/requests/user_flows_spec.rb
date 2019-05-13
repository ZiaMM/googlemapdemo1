require 'rails_helper'

RSpec.describe "UserFlows", type: :request do
  describe "GET /home" do
    it "Verifies the home route-helper works" do
      get home_path
      expect(response).to have_http_status(200)
    end
    it "Verifies the home path works" do
      get "/home"
      expect(response).to have_http_status(200)
    end
  end
  describe "GET /about" do
    it "Verifies the about route-helper works" do
      get about_path
      expect(response).to have_http_status(200)
    end
    it "Verifies the about route-path works" do
      get "/about"
      expect(response).to have_http_status(200)
    end
    it "Verifies the about content" do
      get "/about"
      expect(response.body).to match(/This project was created as a demo of a Rails app using Google-Maps functionality/)
    end
  end
end
