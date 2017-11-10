require 'test_helper'

class ProfessionalTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @professional_type = professional_types(:one)
  end

  test "should get index" do
    get professional_types_url
    assert_response :success
  end

  test "should get new" do
    get new_professional_type_url
    assert_response :success
  end

  test "should create professional_type" do
    assert_difference('ProfessionalType.count') do
      post professional_types_url, params: { professional_type: { name: @professional_type.name } }
    end

    assert_redirected_to professional_type_url(ProfessionalType.last)
  end

  test "should show professional_type" do
    get professional_type_url(@professional_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_professional_type_url(@professional_type)
    assert_response :success
  end

  test "should update professional_type" do
    patch professional_type_url(@professional_type), params: { professional_type: { name: @professional_type.name } }
    assert_redirected_to professional_type_url(@professional_type)
  end

  test "should destroy professional_type" do
    assert_difference('ProfessionalType.count', -1) do
      delete professional_type_url(@professional_type)
    end

    assert_redirected_to professional_types_url
  end
end
