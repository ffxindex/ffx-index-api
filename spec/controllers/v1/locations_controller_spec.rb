require 'rails_helper'

RSpec.describe V1::LocationsController, type: :controller do

  describe "GET #show" do
    it "returns http success with integer" do
      get :show, params: { id: 1 }
      expect(response).to have_http_status(:success)
      expect(subject).to render_template("v1/locations/show")
    end

    it "returns http success with slug" do
      get :show, params: { id: 'monster-arena' }
      expect(response).to have_http_status(:success)
      expect(subject).to render_template("v1/locations/show")
    end
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
      expect(subject).to render_template("v1/locations/index")
    end
  end
end
