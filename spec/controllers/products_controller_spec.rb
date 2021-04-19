require "rails_helper"

RSpec.describe ProductsController, type: :controller do
	describe "#index" do
		before {get :index}
		it "GET returns status 200 " do
			expect(response).to have_http_status(:ok)
			expect(response.status).to eq(200)
		end
		it "returns the products in @products" do

			products = (assigns(:products))

			expect(products).not_to eq(nil)
		end
	end
end
