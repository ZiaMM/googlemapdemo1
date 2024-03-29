# require 'rails_helper'
#
# # This spec was generated by rspec-rails when you ran the scaffold generator.
# # It demonstrates how one might use RSpec to specify the controller code that
# # was generated by Rails when you ran the scaffold generator.
# #
# # It assumes that the implementation code is generated by the rails scaffold
# # generator.  If you are using any extension libraries to generate different
# # controller code, this generated spec may or may not pass.
# #
# # It only uses APIs available in rails and/or rspec-rails.  There are a number
# # of tools you can use to make these specs even more expressive, but we're
# # sticking to rails and rspec-rails APIs to keep things simple and stable.
# #
# # Compared to earlier versions of this generator, there is very limited use of
# # stubs and message expectations in this spec.  Stubs are only used when there
# # is no simpler way to get a handle on the object needed for the example.
# # Message expectations are only used when there is no simpler way to specify
# # that an instance is receiving a specific message.
# #
# # Also compared to earlier versions of this generator, there are no longer any
# # expectations of assigns and templates rendered. These features have been
# # removed from Rails core in Rails 5, but can be added back in via the
# # `rails-controller-testing` gem.
#
# RSpec.describe BusinessesController, type: :controller do
#
#   # This should return the minimal set of attributes required to create a valid
#   # Business. As you add validations to Business, be sure to
#   # adjust the attributes here as well.
#   let(:valid_attributes) { {
#      :name => "test name",
#      :shop_type => "Spa and Massage",
#      :latitude => 14.0965666,
#      :longitude => 1007223969
#    } }
#
#   let(:invalid_attributes) { {
#     :name => 55,
#     :shop_type => 22,
#     :latitude => "somelat",
#     :longitude => "somelong"
#   } }
#
#   # This should return the minimal set of values that should be in the session
#   # in order to pass any filters (e.g. authentication) defined in
#   # BusinessesController. Be sure to keep this updated too.
#   # let(:valid_session) { {} }
#   # This app does not use authentication
#
#   describe "GET #index" do
#     it "returns a success response" do
#       Business.create! valid_attributes
#       get :index, {} # , valid_session
#       expect(response).to be_successful
#     end
#   end
#
#   describe "GET #show" do
#     it "returns a success response" do
#       business = Business.create! valid_attributes
#       get :show, {:id => business.to_param} # , valid_session
#       expect(response).to be_successful
#     end
#   end
#
#   describe "GET #new" do
#     it "returns a success response" do
#       get :new, {} # , valid_session
#       expect(response).to be_successful
#     end
#   end
#
#   describe "GET #edit" do
#     it "returns a success response" do
#       business = Business.create! valid_attributes
#       get :edit, {:id => business.to_param} # , valid_session
#       expect(response).to be_successful
#     end
#   end
#
#   describe "POST #create" do
#     context "with valid params" do
#       it "creates a new Business" do
#         expect {
#           post :create, {:business => valid_attributes} # , valid_session
#         }.to change(Business, :count).by(1)
#       end
#
#       it "redirects to the created business" do
#         post :create, {:business => valid_attributes} # , valid_session
#         expect(response).to redirect_to(Business.last)
#       end
#     end
#
#     context "with invalid params" do
#       it "returns a success response (i.e. to display the 'new' template)" do
#         post :create, {:business => invalid_attributes} # , valid_session
#         expect(response).to be_successful
#       end
#     end
#   end
#
#   describe "PUT #update" do
#     context "with valid params" do
#       let(:new_attributes) {
#         # skip("Add a hash of attributes valid for your model")
#         {
#             :name => "Other Name",
#             :shop_type => "shop type 3",
#             :latitude => "100",
#             :longitude => "100"
#           }
#       }
#
#       it "updates the requested business" do
#         business = Business.create! valid_attributes
#         put :update, {:id => business.to_param, :business => new_attributes} # , valid_session
#         business.reload
#         # skip("Add assertions for updated state")
#         expect(assigns(:business).attributes['name']).to match(new_attributes[:name])
#       end
#
#       it "redirects to the business" do
#         business = Business.create! valid_attributes
#         put :update, {:id => business.to_param, :business => valid_attributes} # , valid_session
#         expect(response).to redirect_to(business)
#       end
#     end
#
#     context "with invalid params" do
#       it "returns a success response (i.e. to display the 'edit' template)" do
#         business = Business.create! valid_attributes
#         put :update, {:id => business.to_param, :business => invalid_attributes} # , valid_session
#         expect(response).to be_successful
#       end
#     end
#   end
#
#   describe "DELETE #destroy" do
#     it "destroys the requested business" do
#       business = Business.create! valid_attributes
#       expect {
#         delete :destroy, {:id => business.to_param} # , valid_session
#       }.to change(Business, :count).by(-1)
#     end
#
#     it "redirects to the businesses list" do
#       business = Business.create! valid_attributes
#       delete :destroy, {:id => business.to_param} # , valid_session
#       expect(response).to redirect_to(businesses_url)
#     end
#   end
#
# end
