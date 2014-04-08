require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
	@update = {
		title: 'FTL Expansion',
		description: 'Expansion to FTL that adds so much more content, it almost makes it a new game',
		image_url: 'expansion.jpg',
		price: 10.00
	}
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
      assert_select "Rebel Flagship", true, "You cannot sell the Rebel Flagship"
    assert_difference('Product.count') do
      post :create, product: @update
    end
    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    patch :update, id: @product, product: @update
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
