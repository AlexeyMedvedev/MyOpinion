require 'rails_helper'

RSpec.describe BooksController, :type => :controller do

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

  describe "Create book" do
    before :each do @book = Factory(:book)
    it "create book" do
      expect {post :create, book: @book.attributes}.to change(Book, :count).by(1)
    end
    end
  end

  describe "Destroy book" do
    before :each do @book = Factory(:book)
    it "delete book" do
      expect {delete :destroy, id: @book}.to change(Book, :count).by(-1)
    end
    end
  end

  describe "Show book" do
    before :each do @book = Factory(:book)
    it "returns http success" do
      get :show, id: @book
      expect(response).to have_http_status(:success)
    end
    end
  end

  describe "Edit book" do
    before :each do @book = Factory(:book)
    it "returns http success" do
      get :edit, id: @book
      expect(response).to have_http_status(:success)
    end
    end
  end

  describe "Update book" do
    before :each do @book = Factory(:book)
    it "update book" do
      put :update, id: @book, book: @book.attributes
      expect(subject).to (book_path(assigns(:book)))
    end
    end
  end

end
