require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/tournaments", type: :request do
  # This should return the minimal set of attributes required to create a valid
  # Tournament. As you add validations to Tournament, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Tournament.create! valid_attributes
      get tournaments_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      tournament = Tournament.create! valid_attributes
      get tournament_url(tournament)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_tournament_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      tournament = Tournament.create! valid_attributes
      get edit_tournament_url(tournament)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Tournament" do
        expect {
          post tournaments_url, params: { tournament: valid_attributes }
        }.to change(Tournament, :count).by(1)
      end

      it "redirects to the created tournament" do
        post tournaments_url, params: { tournament: valid_attributes }
        expect(response).to redirect_to(tournament_url(Tournament.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Tournament" do
        expect {
          post tournaments_url, params: { tournament: invalid_attributes }
        }.to change(Tournament, :count).by(0)
      end


      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post tournaments_url, params: { tournament: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested tournament" do
        tournament = Tournament.create! valid_attributes
        patch tournament_url(tournament), params: { tournament: new_attributes }
        tournament.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the tournament" do
        tournament = Tournament.create! valid_attributes
        patch tournament_url(tournament), params: { tournament: new_attributes }
        tournament.reload
        expect(response).to redirect_to(tournament_url(tournament))
      end
    end

    context "with invalid parameters" do
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        tournament = Tournament.create! valid_attributes
        patch tournament_url(tournament), params: { tournament: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested tournament" do
      tournament = Tournament.create! valid_attributes
      expect {
        delete tournament_url(tournament)
      }.to change(Tournament, :count).by(-1)
    end

    it "redirects to the tournaments list" do
      tournament = Tournament.create! valid_attributes
      delete tournament_url(tournament)
      expect(response).to redirect_to(tournaments_url)
    end
  end
end
