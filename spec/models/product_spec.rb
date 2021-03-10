require 'rails_helper'

RSpec.describe Product, type: :model do

  describe "#validates test" do
    context "a value nill" do
      it 'without title' do
        product =  Product.new(title: nil, price: 10.99, description: "conto de shakespeare", image_url: "megeradomadaa.jpg")
        expect(product).to be_invalid
      end
      it 'without price' do
        product =  Product.new(title: "megera domada", price: nil, description: "conto de shakespeare", image_url: "megeradomadaa.jpg")
        expect(product).to be_invalid
      end
      it 'without description' do
        product =  Product.new(title: "megera domada", price: 10.99, description: nil, image_url: "megeradomadaa.jpg")
        expect(product).to be_invalid
      end
      it 'without image' do
        product =  Product.new(title: "megera domada", price: 10.99, description: "conto de shakespear", image_url: nil)
        expect(product).to be_invalid
      end

      context "#image invalid" do
        it 'image_url invalid format' do
          product = Product.new(title: "megera domada", price: nil, description: "conto de shakespeare", image_url: "megeradomadaa.csv")
          expect(product).to be_invalid
        end
      end

      context "#price invalid" do
        it 'price is smaller than 0.1' do
        product = Product.new(title: "megera domada", price: 0.0, description: "conto de shakespeare", image_url: "megeradomadaa.csv")
        expect(product).to be_invalid
        end
      end
    end
  end




end
