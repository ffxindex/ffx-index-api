require 'rails_helper'

RSpec.describe V1::ItemsController, type: :controller do
  describe "GET #show" do
    it "returns http success with integer" do
      get :show, params: { id: 1 }
      expect(response).to have_http_status(:success)
      expect(subject).to render_template("v1/items/show")
    end

    it "returns http success with slug" do
      get :show, params: { id: 'ability-distiller' }
      expect(response).to have_http_status(:success)
      expect(subject).to render_template("v1/items/show")
    end
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
      expect(subject).to render_template("v1/items/index")
    end
  end

  describe "GET #items_with_monsters" do
    it "returns http success" do
      get :items_with_monsters
      expect(response).to have_http_status(:success)
      expect(subject).to render_template("v1/items/items_with_monsters")
    end
  end
end
