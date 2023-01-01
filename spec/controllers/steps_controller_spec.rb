require 'rails_helper'

RSpec.describe StepsController, type: :controller do
  describe "GET #index" do
    login_user
    walk = FactoryBot.create(:walk)

    it "Index steps" do
      get :index
      assert_response :success
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end

end
