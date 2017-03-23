module Inqr
  describe UsersController do
    set_engine_routes

    describe "GET #me" do

      before(:each) do
        @user = create(:user)
        sign_in @user, scope: :user

        get :show
      end

      it "returns http success" do
        expect(response).to have_http_status(:success)
      end

    end
  end
end
