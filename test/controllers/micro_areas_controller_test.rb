require 'test_helper'

class MicroAreasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @micro_area = micro_areas(:one)
  end

  test "should get index" do
    get micro_areas_url
    assert_response :success
  end

  test "should get new" do
    get new_micro_area_url
    assert_response :success
  end

  test "should create micro_area" do
    assert_difference('MicroArea.count') do
      post micro_areas_url, params: { micro_area: { name: @micro_area.name, usf_id: @micro_area.usf_id } }
    end

    assert_redirected_to micro_area_url(MicroArea.last)
  end

  test "should show micro_area" do
    get micro_area_url(@micro_area)
    assert_response :success
  end

  test "should get edit" do
    get edit_micro_area_url(@micro_area)
    assert_response :success
  end

  test "should update micro_area" do
    patch micro_area_url(@micro_area), params: { micro_area: { name: @micro_area.name, usf_id: @micro_area.usf_id } }
    assert_redirected_to micro_area_url(@micro_area)
  end

  test "should destroy micro_area" do
    assert_difference('MicroArea.count', -1) do
      delete micro_area_url(@micro_area)
    end

    assert_redirected_to micro_areas_url
  end
end
