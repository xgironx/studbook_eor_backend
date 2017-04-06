require 'test_helper'

class FoalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foal = foals(:one)
  end

  test "should get index" do
    get foals_url, as: :json
    assert_response :success
  end

  test "should create foal" do
    assert_difference('Foal.count') do
      post foals_url, params: { foal: { birthplace: @foal.birthplace, broodmare_id: @foal.broodmare_id, color: @foal.color, foaling_date: @foal.foaling_date, img_url: @foal.img_url, link_to_pedigree_url: @foal.link_to_pedigree_url, markings: @foal.markings, name: @foal.name, registry_tattoo: @foal.registry_tattoo, sex: @foal.sex, stallion_id: @foal.stallion_id } }, as: :json
    end

    assert_response 201
  end

  test "should show foal" do
    get foal_url(@foal), as: :json
    assert_response :success
  end

  test "should update foal" do
    patch foal_url(@foal), params: { foal: { birthplace: @foal.birthplace, broodmare_id: @foal.broodmare_id, color: @foal.color, foaling_date: @foal.foaling_date, img_url: @foal.img_url, link_to_pedigree_url: @foal.link_to_pedigree_url, markings: @foal.markings, name: @foal.name, registry_tattoo: @foal.registry_tattoo, sex: @foal.sex, stallion_id: @foal.stallion_id } }, as: :json
    assert_response 200
  end

  test "should destroy foal" do
    assert_difference('Foal.count', -1) do
      delete foal_url(@foal), as: :json
    end

    assert_response 204
  end
end
