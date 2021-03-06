require 'rails_helper'

RSpec.describe MusicsController, :type => :controller do

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

  describe "Create music" do
    it "create music" do
      expect {post :create, music: @music.attributes}.to change(Music, :count).by(1)
    end
  end

  describe "Destroy music" do
    it "delete music" do
      expect {delete :destroy, id: @music}.to change(Music, :count).by(-1)
    end
  end

  describe "Show music" do
    it "returns http success" do
      get :show, id: @music
      expect(response).to have_http_status(:success)
    end
  end

  describe "Edit music" do
    it "returns http success" do
      get :edit, id: @music
      expect(response).to have_http_status(:success)
    end
  end

  describe "Update music" do
    it "update music" do
      put :update, id: @music, music: @music.attributes
      expect(subject).to (music_path(assigns(:music)))
    end
  end

end
