require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET #mass_index" do
    it "returns http success" do
      get :mass_index
      expect(response).to have_http_status(:success)
    end
  end

end
