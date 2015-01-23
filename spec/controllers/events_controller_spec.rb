require 'rails_helper'

RSpec.describe EventsController, :type => :controller do

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

  describe "Create event" do
    before :each do @event = Factory(:event)
    it "create event" do
      expect {post :create, event: @event.attributes}.to change(Event, :count).by(1)
    end
    end
  end

  describe "Destroy event" do
    before :each do @event = Factory(:event)
    it "delete event" do
      expect {delete :destroy, id: @event}.to change(Event, :count).by(-1)
    end
    end
  end

  describe "Show event" do
    before :each do @event = Factory(:event)
    it "returns http success" do
      get :show, id: @event
      expect(response).to have_http_status(:success)
    end
    end
  end

  describe "Edit event" do
    before :each do @event = Factory(:event)
    it "returns http success" do
      get :edit, id: @event
      expect(response).to have_http_status(:success)
    end
    end
  end

  describe "Update event" do
    before :each do @event = Factory(:event)
    it "update event" do
      put :update, id: @event, event: @event.attributes
      expect(subject).to (event_path(assigns(:event)))
    end
    end
  end

end
