require 'test_helper'

class BroodmaresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @broodmare = broodmares(:one)
  end

  test "should get index" do
    get broodmares_url, as: :json
    assert_response :success
  end

  test "should create broodmare" do
    assert_difference('Broodmare.count') do
      post broodmares_url, params: { broodmare: { age: @broodmare.age, barren: @broodmare.barren, color: @broodmare.color, expected_foaling_date: @broodmare.expected_foaling_date, img_url: @broodmare.img_url, in_foal_now: @broodmare.in_foal_now, link_to_pedigree_url: @broodmare.link_to_pedigree_url, name: @broodmare.name, num_foals: @broodmare.num_foals, registry_tattoo: @broodmare.registry_tattoo, stallion_id: @broodmare.stallion_id } }, as: :json
    end

    assert_response 201
  end

  test "should show broodmare" do
    get broodmare_url(@broodmare), as: :json
    assert_response :success
  end

  test "should update broodmare" do
    patch broodmare_url(@broodmare), params: { broodmare: { age: @broodmare.age, barren: @broodmare.barren, color: @broodmare.color, expected_foaling_date: @broodmare.expected_foaling_date, img_url: @broodmare.img_url, in_foal_now: @broodmare.in_foal_now, link_to_pedigree_url: @broodmare.link_to_pedigree_url, name: @broodmare.name, num_foals: @broodmare.num_foals, registry_tattoo: @broodmare.registry_tattoo, stallion_id: @broodmare.stallion_id } }, as: :json
    assert_response 200
  end

  test "should destroy broodmare" do
    assert_difference('Broodmare.count', -1) do
      delete broodmare_url(@broodmare), as: :json
    end

    assert_response 204
  end
end
