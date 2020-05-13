require 'test_helper'

class BrandsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @brand = brands(:one)
  end

  test "should get index" do
    get brands_url, as: :json
    assert_response :success
  end

  test "should create brand" do
    assert_difference('Brand.count') do
      post brands_url, params: { brand: { animals_rating: @brand.animals_rating, animals_rating_details: @brand.animals_rating_details, description: @brand.description, name: @brand.name, people_rating: @brand.people_rating, people_rating_details: @brand.people_rating_details, planet_rating: @brand.planet_rating, planet_rating_details: @brand.planet_rating_details, sustainability_rating: @brand.sustainability_rating, sustainability_rating_description: @brand.sustainability_rating_description } }, as: :json
    end

    assert_response 201
  end

  test "should show brand" do
    get brand_url(@brand), as: :json
    assert_response :success
  end

  test "should update brand" do
    patch brand_url(@brand), params: { brand: { animals_rating: @brand.animals_rating, animals_rating_details: @brand.animals_rating_details, description: @brand.description, name: @brand.name, people_rating: @brand.people_rating, people_rating_details: @brand.people_rating_details, planet_rating: @brand.planet_rating, planet_rating_details: @brand.planet_rating_details, sustainability_rating: @brand.sustainability_rating, sustainability_rating_description: @brand.sustainability_rating_description } }, as: :json
    assert_response 200
  end

  test "should destroy brand" do
    assert_difference('Brand.count', -1) do
      delete brand_url(@brand), as: :json
    end

    assert_response 204
  end
end
