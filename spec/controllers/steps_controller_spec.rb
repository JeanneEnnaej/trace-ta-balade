require 'rails_helper'

RSpec.describe StepsController, type: :controller do
  # describe "GET #index" do
  #   login_user
  #   walk = FactoryBot.create(:walk)


  #   it "Index steps" do
  #     get :index, params: { walk_id: walk.id }
  #     assert_response :success
  #   end

  #   it "renders the index template" do
  #     get :index, params: { walk_id: walk.id }
  #     expect(response).to render_template("index")
  #   end
  # end

  # describe "POST #create" do
  #   login_user
  #   walk = FactoryBot.create(:walk)

    # it "Create step" do
    #   @request.env['HTTP_REFERER'] = 'http://localhost:3000/walks/15'
    #   expect {
    #     post :create, params: {walk_id: walk.id, step: { name: "Test step", longitude: "123", latitude:"456", walk_id: walk.id } }
    #   }.to change(Step, :count).by(1)
    # end

    # it "redirects after create step on index of steps" do
    #   @request.env['HTTP_REFERER'] = 'http://localhost:3000/walks/15/steps'
    #   post :create, params: {walk_id: walk.id, step: { name: "Test step", longitude: "123", latitude:"456", walk_id: walk.id } }
    #   expect(response).to redirect_to(walk_steps_path(walk))
    # end

    # it "redirects after create step on walk show" do
    #   @request.env['HTTP_REFERER'] = 'http://localhost:3000/walks/15/'
    #   post :create, params: {walk_id: walk.id, step: { name: "Test step", longitude: "123", latitude:"456", walk_id: walk.id } }
    #   expect(response).to redirect_to(walk)
    # end

    # it "Does not create step" do
    #   @request.env['HTTP_REFERER'] = 'http://localhost:3000/walks/15/steps'
    #   expect {
    #     post :create, params: {walk_id: walk.id, step: { name: "", longitude: "123", latitude:"456", walk_id: walk.id } }
    #   }.to change(Walk, :count).by(0)
    # end


  # describe "PATCH #update" do
  #   login_user
  #   walk = FactoryBot.create(:walk)
  #   step = FactoryBot.create(:step)

  #   it "Update step" do
  #     patch :update, params: {walk_id: walk.id ,id: step.id,step: { name: "Test step", longitude: "123", latitude:"456", walk_id: walk.id } }
  #     expect(response).to redirect_to(walk_steps_path(walk))
  #   end

  #   it "Does not update step" do
  #     patch :update, params: {walk_id: walk.id,id: step.id, step: { name: "", longitude: "123", latitude:"456", walk_id: walk.id } }
  #     expect(response).to redirect_to(edit_walk_step_path(walk, step))
  #   end
  # end

  # describe "DELETE #destroy" do
  #   login_user
  #   walk = FactoryBot.create(:walk)
  #   step = FactoryBot.create(:step)

  #   it "Delete walk" do
  #     @request.env['HTTP_REFERER'] = 'http://localhost:3000/walks/15/steps'
  #     expect {
  #       delete :destroy, params: { id: walk.id, step: {id: step.id} }
  #     }.to change(Step, :count).by(-1)
  #   end

    # it "redirects to walks index" do
    #   @request.env['HTTP_REFERER'] = 'http://localhost:3000/walks/15/steps'
    #   delete :destroy, params: { id: walk.id, id: step.id }
    #   expect(response).to redirect_to(walk_steps_path(walk))
    # end
  end

end
