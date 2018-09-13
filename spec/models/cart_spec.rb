require 'rails_helper'

RSpec.describe Cart, type: :model do
	it "includes products into carts" do
		cart = FactoryBot.create(:cart)
		product = FactoryBot.create(:product)
		cart.cartships.create(product: product, quantity: 1)
		expect(cart.products.length).to eq(1)
	end

	it "calculates the total price for a cart" do
		cart = FactoryBot.create(:cart)
		product1 = FactoryBot.create(:product, price: 10)
		product2 = FactoryBot.create(:product, price: 5)
		cart.cartships.create(product: product1, quantity: 2)
		cart.cartships.create(product: product2, quantity: 1)
		expect(cart.total_price).to eq(25)
	end
end 