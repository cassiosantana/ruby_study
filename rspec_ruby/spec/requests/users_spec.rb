require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /users" do
    it "returns success status" do
      get users_path
      expect(response).to have_http_status(200)
    end
    it "the user's tittle is present" do
      users = create_list(:user, 3)
      get users_path
      # checks if the body of the returned page has the result of the title method on each user
      users.each do |user|
        expect(response.body).to include(user.title)
      end
    end
  end

  describe "POST /users" do
    context "when it has valid parameters" do
      it "creates the user with correct attributes" do
        # .attributes_for generates attributes based on the model already defined in factories
        user_attributes = FactoryBot.attributes_for(:user)
        post users_path, params: { user: user_attributes }
        # checks if the last user sent in the post has the same attributes that were created before the post
        expect(User.last).to have_attributes(user_attributes)
    end
  end

    context "when it has no valid parameters" do
      it "does not create user" do
        # checks if by making a post with invalid values the user count has changed
        expect {
          post users_path, params: { user: {kind: '', name: '', level: ''}}
        }.to_not change(User, :count)
      end
    end
  end
end
