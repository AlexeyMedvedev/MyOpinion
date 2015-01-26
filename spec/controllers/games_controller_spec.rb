require 'rails_helper'

RSpec.describe GamesController, :type => :controller do
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

  describe "Create game" do
    before :each do @game = Factory(:game)
    it "create game" do
      expect {post :create, game: @game.attributes}.to change(Game, :count).by(1)
    end
    end
  end

  describe "Destroy game" do
    before :each do @game = Factory(:game)
    it "delete game" do
      expect {delete :destroy, id: @game}.to change(Game, :count).by(-1)
    end
    end
  end

  describe "Show game" do
    before :each do @game = Factory(:game)
    it "returns http success" do
      get :show, id: @game
      expect(response).to have_http_status(:success)
    end
    end
  end

  describe "Edit game" do
    before :each do @game = Factory(:game)
    it "returns http success" do
      get :edit, id: @game
      expect(response).to have_http_status(:success)
    end
    end
  end

  describe "Update game" do
    before :each do @game = Factory(:game)
    it "update game" do
      put :update, id: @game, game: @game.attributes
      expect(subject).to (game_path(assigns(:game)))
    end
    end
  end

end
