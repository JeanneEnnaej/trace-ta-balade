require 'rails_helper'

RSpec.describe WalksController, type: :controller do

  describe "GET #index" do
    login_user
    before(:each) do
      Geocoder.configure(:lookup => :test)
      Geocoder::Lookup::Test.add_stub(
        "01700 Miribel, France", [
          { 'latitude'     => 45.8235227,
            'longitude'    => 4.9528525,
          }
          ])
    end

    it "Index walks" do
      get :index
      assert_response :success
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe "GET #show" do
    before(:each) do
      Geocoder.configure(:lookup => :test)
      Geocoder::Lookup::Test.add_stub(
        "01700 Miribel, France", [
          { 'latitude'     => 45.8235227,
            'longitude'    => 4.9528525,
          }
          ])
    end
    login_user
    walk = FactoryBot.create(:walk)

    it "Show walk" do
      get :show, params: { id: walk.id }
      assert_response :success
    end

    it "renders the show template" do
      get :show, params: { id: walk.id }
      expect(response).to render_template("show")
    end
  end

  describe "POST #create" do
    before(:each) do
      Geocoder.configure(:lookup => :test)
      Geocoder::Lookup::Test.add_stub(
        "01700 Miribel, France", [
          { 'latitude'     => 45.8235227,
            'longitude'    => 4.9528525,
          }
          ])
    end
    login_user

    it "Create walk" do
      expect {
        post :create, params: { walk: { title: "Test Walk", address: "01700 Miribel, France", user_id: subject.current_user.id } }
      }.to change(Walk, :count).by(1)
    end

    it "redirects to the new walk" do
      post :create, params: { walk: { title: "Test Walk", address: "01700 Miribel, France", user_id: subject.current_user.id } }
      expect(response).to redirect_to(Walk.last)
    end

    it "Does not create walk" do
      expect {
        post :create, params: { walk: { title: "", address: "", user_id: subject.current_user.id } }
      }.to change(Walk, :count).by(0)
    end
  end

  describe "PATCH #update" do
    login_user
    walk = FactoryBot.create(:walk)
    before(:each) do
      Geocoder.configure(:lookup => :test)
      Geocoder::Lookup::Test.add_stub(
        "01700 Miribel, France", [
          { 'latitude'     => 45.8235227,
            'longitude'    => 4.9528525,
          }
          ])
    end

    it "Update walk" do
      patch :update, params: { id: walk.id, walk: { title: "Test Walk", address: "01700 Miribel, France", user_id: subject.current_user.id } }
      expect(response).to redirect_to(walk)
    end

    it "Does not update walk" do
      patch :update, params: { id: walk.id, walk: { title: "", address: "", user_id: subject.current_user.id } }
      expect(response).to redirect_to(edit_walk_path(walk))
    end
  end

  describe "DELETE #destroy" do
    login_user
    walk = FactoryBot.create(:walk)
    before(:each) do
      Geocoder.configure(:lookup => :test)
      Geocoder::Lookup::Test.add_stub(
        "01700 Miribel, France", [
          { 'latitude'     => 45.8235227,
            'longitude'    => 4.9528525,
          }
          ])
    end

    it "Delete walk" do
      expect {
        delete :destroy, params: { id: walk.id }
      }.to change(Walk, :count).by(-1)
    end

    it "redirects to walks index" do
      delete :destroy, params: { id: walk.id }
      expect(response).to redirect_to(walks_path)
    end
  end
end
