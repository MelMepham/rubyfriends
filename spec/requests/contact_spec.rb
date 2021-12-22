require 'rails_helper'

RSpec.describe "Contacts", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get "/contact/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/contact/create"
      expect(response).to have_http_status(:success)
    end
  end

end
