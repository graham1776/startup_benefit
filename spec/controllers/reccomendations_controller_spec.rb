require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe ReccomendationsController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # Reccomendation. As you add validations to Reccomendation, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ReccomendationsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all reccomendations as @reccomendations" do
      reccomendation = Reccomendation.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:reccomendations)).to eq([reccomendation])
    end
  end

  describe "GET show" do
    it "assigns the requested reccomendation as @reccomendation" do
      reccomendation = Reccomendation.create! valid_attributes
      get :show, {:id => reccomendation.to_param}, valid_session
      expect(assigns(:reccomendation)).to eq(reccomendation)
    end
  end

  describe "GET new" do
    it "assigns a new reccomendation as @reccomendation" do
      get :new, {}, valid_session
      expect(assigns(:reccomendation)).to be_a_new(Reccomendation)
    end
  end

  describe "GET edit" do
    it "assigns the requested reccomendation as @reccomendation" do
      reccomendation = Reccomendation.create! valid_attributes
      get :edit, {:id => reccomendation.to_param}, valid_session
      expect(assigns(:reccomendation)).to eq(reccomendation)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Reccomendation" do
        expect {
          post :create, {:reccomendation => valid_attributes}, valid_session
        }.to change(Reccomendation, :count).by(1)
      end

      it "assigns a newly created reccomendation as @reccomendation" do
        post :create, {:reccomendation => valid_attributes}, valid_session
        expect(assigns(:reccomendation)).to be_a(Reccomendation)
        expect(assigns(:reccomendation)).to be_persisted
      end

      it "redirects to the created reccomendation" do
        post :create, {:reccomendation => valid_attributes}, valid_session
        expect(response).to redirect_to(Reccomendation.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved reccomendation as @reccomendation" do
        post :create, {:reccomendation => invalid_attributes}, valid_session
        expect(assigns(:reccomendation)).to be_a_new(Reccomendation)
      end

      it "re-renders the 'new' template" do
        post :create, {:reccomendation => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested reccomendation" do
        reccomendation = Reccomendation.create! valid_attributes
        put :update, {:id => reccomendation.to_param, :reccomendation => new_attributes}, valid_session
        reccomendation.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested reccomendation as @reccomendation" do
        reccomendation = Reccomendation.create! valid_attributes
        put :update, {:id => reccomendation.to_param, :reccomendation => valid_attributes}, valid_session
        expect(assigns(:reccomendation)).to eq(reccomendation)
      end

      it "redirects to the reccomendation" do
        reccomendation = Reccomendation.create! valid_attributes
        put :update, {:id => reccomendation.to_param, :reccomendation => valid_attributes}, valid_session
        expect(response).to redirect_to(reccomendation)
      end
    end

    describe "with invalid params" do
      it "assigns the reccomendation as @reccomendation" do
        reccomendation = Reccomendation.create! valid_attributes
        put :update, {:id => reccomendation.to_param, :reccomendation => invalid_attributes}, valid_session
        expect(assigns(:reccomendation)).to eq(reccomendation)
      end

      it "re-renders the 'edit' template" do
        reccomendation = Reccomendation.create! valid_attributes
        put :update, {:id => reccomendation.to_param, :reccomendation => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested reccomendation" do
      reccomendation = Reccomendation.create! valid_attributes
      expect {
        delete :destroy, {:id => reccomendation.to_param}, valid_session
      }.to change(Reccomendation, :count).by(-1)
    end

    it "redirects to the reccomendations list" do
      reccomendation = Reccomendation.create! valid_attributes
      delete :destroy, {:id => reccomendation.to_param}, valid_session
      expect(response).to redirect_to(reccomendations_url)
    end
  end

end
