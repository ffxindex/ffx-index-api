require 'rails_helper'

RSpec.describe V1::CombinationsController, type: :controller do
  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
      expect(subject).to render_template("v1/combinations/index")
    end
  end
end
