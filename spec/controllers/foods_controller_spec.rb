require 'rails_helper'

RSpec.describe FoodsController, :type => :controller do

  describe "GET index" do
    it "returns http success" do

      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "Create food" do
    before :each do @food = Factory(:food)
    it "create food" do
      expect {post :create, food: @food.attributes}.to change(Food, :count).by(1)
    end
    end
  end

  describe "Destroy food" do
    before :each do @food = Factory(:food)
    it "delete food" do
      expect {delete :destroy, id: @food}.to change(Food, :count).by(-1)
    end
    end
  end

  describe "Show food" do
    before :each do @food = Factory(:food)
    it "returns http success" do
      get :show, id: @food
      expect(response).to have_http_status(:success)
    end
    end
  end

  describe "Edit food" do
    before :each do @food = Factory(:food)
    it "returns http success" do
      get :edit, id: @food
      expect(response).to have_http_status(:success)
    end
    end
  end

  describe "Update food" do
    before :each do @food = Factory(:food)
    it "update food" do
      put :update, id: @food, food: @food.attributes
      expect(subject).to (food_path(assigns(:food)))
    end
    end
  end

end
