require 'rails_helper'

RSpec.describe "User Detail", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get "/user_detail/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/user_detail/create"
      expect(response).to have_http_status(:success)
    end
  end

end
