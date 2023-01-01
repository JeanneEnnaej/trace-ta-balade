require 'rails_helper'

RSpec.describe WalksController, type: :controller do

  # describe "GET #index" do
  #   login_user

  #   it "Index walks" do
  #     get :index
  #     assert_response :success
  #   end

  #   it "renders the index template" do
  #     get :index
  #     expect(response).to render_template("index")
  #   end
  # end

  # describe "GET #show" do
  #   login_user
  #   walk = FactoryBot.create(:walk)
  #   it "Show walk" do
  #     get :show, params: { id: walk.id }
  #     assert_response :success
  #   end

  #   it "renders the show template" do
  #     get :show, params: { id: walk.id }
  #     expect(response).to render_template("show")
  #   end
  # end

  # describe "POST #create" do
  #   login_user

  #   it "Create walk" do
  #     expect {
  #       post :create, params: { walk: { title: "Test Walk", address: "123 rue leon blum", user_id: subject.current_user.id } }
  #     }.to change(Walk, :count).by(1)
  #   end

  #   it "redirects to the new walk" do
  #     post :create, params: { walk: { title: "Test Walk", address: "123 rue leon blum", user_id: subject.current_user.id } }
  #     expect(response).to redirect_to(Walk.last)
  #   end

  #   it "Does not create walk" do
  #     expect {
  #       post :create, params: { walk: { title: "", address: "", user_id: subject.current_user.id } }
  #     }.to change(Walk, :count).by(0)
  #   end
  # end

  # describe "PATCH #update" do
  #   login_user
  #   walk = FactoryBot.create(:walk)

  #   it "Update walk" do
  #     patch :update, params: { id: walk.id, walk: { title: "Test Walk", address: "123 rue leon blum", user_id: subject.current_user.id } }
  #     expect(response).to redirect_to(walk)
  #   end

  #   it "Does not update walk" do
  #     patch :update, params: { id: walk.id, walk: { title: "", address: "", user_id: subject.current_user.id } }
  #     expect(response).to redirect_to(edit_walk_path(walk))
  #   end
  # end

  # describe "DELETE #destroy" do
  #   login_user
  #   walk = FactoryBot.create(:walk)

  #   it "Delete walk" do
  #     expect {
  #       delete :destroy, params: { id: walk.id }
  #     }.to change(Walk, :count).by(-1)
  #   end

  #   it "redirects to walks index" do
  #     delete :destroy, params: { id: walk.id }
  #     expect(response).to redirect_to(walks_path)
  #   end
  # end
end
