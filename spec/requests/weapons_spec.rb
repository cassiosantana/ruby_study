require 'rails_helper'

RSpec.describe "Weapons", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/weapons/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "Weapons attributes" do
    context 'Present attributes' do
      it "the weapon name is present" do
        weapons = create_list(:weapon, 3)
        get weapons_path
        weapons.each do |weapon|
          expect(response.body).to include(weapon.name)
        end
      end

      it "the weapon current power is present" do
        weapons = create_list(:weapon, 3)
        get weapons_path
        weapons.each do |weapon|
          expect(response.body).to include("#{ weapon.current_power }")
        end
      end

      it "the weapon title is present" do
        weapons = create_list(:weapon, 3)
        get weapons_path
        weapons.each do |weapon|
          expect(response.body).to include(weapon.title)
        end
      end
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/weapons/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/weapons/destroy"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/weapons/show"
      expect(response).to have_http_status(:success)
    end
  end

end
