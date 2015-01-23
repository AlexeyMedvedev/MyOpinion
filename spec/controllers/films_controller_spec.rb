require 'rails_helper'

RSpec.describe FilmsController, :type => :controller do

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

  describe "Create film" do
    before :each do @film = Factory(:film)
    it "create film" do
      expect {post :create, film: @film.attributes}.to change(Film, :count).by(1)
    end
    end
  end

  describe "Destroy film" do
    before :each do @film = Factory(:film)
    it "delete film" do
      expect {delete :destroy, id: @film}.to change(Film, :count).by(-1)
    end
    end
  end

  describe "Show film" do
    before :each do @film = Factory(:film)
    it "returns http success" do
      get :show, id: @film
      expect(response).to have_http_status(:success)
    end
    end
  end

  describe "Edit film" do
    before :each do @film = Factory(:film)
    it "returns http success" do
      get :edit, id: @film
      expect(response).to have_http_status(:success)
    end
    end
  end

  describe "Update film" do
    before :each do @film = Factory(:film)
    it "update film" do
      put :update, id: @film, film: @film.attributes
      expect(subject).to (film_path(assigns(:film)))
    end
    end
  end

end
