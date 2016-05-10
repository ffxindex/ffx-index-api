require 'rails_helper'

RSpec.describe V1::AbilitiesController, type: :controller do

  describe "GET #show" do
    it "returns http success with integer" do
      get :show, params: { id: 1 }
      expect(response).to have_http_status(:success)
      expect(subject).to render_template("v1/abilities/show")
    end

    it "returns http success with slug" do
      get :show, params: { id: 'alchemy' }
      expect(response).to have_http_status(:success)
      expect(subject).to render_template("v1/abilities/show")
    end
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
      expect(subject).to render_template("v1/abilities/index")
    end
  end
end
