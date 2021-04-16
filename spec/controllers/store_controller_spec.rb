require "rails_helper"

RSpec.describe StoreController, type: :controller do
	describe "Get index" do
	  it 'returns 200' do
	  	get :index
	  	
	  	expect(response).to have_http_status(:ok)
	  end
	end
end