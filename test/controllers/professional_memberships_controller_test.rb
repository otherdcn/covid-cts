require 'test_helper'

class ProfessionalMembershipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @professional_membership = professional_memberships(:one)
  end

  test "should get index" do
    get professional_memberships_url
    assert_response :success
  end

  test "should get new" do
    get new_professional_membership_url
    assert_response :success
  end

  test "should create professional_membership" do
    assert_difference('ProfessionalMembership.count') do
      post professional_memberships_url, params: { professional_membership: {  } }
    end

    assert_redirected_to professional_membership_url(ProfessionalMembership.last)
  end

  test "should show professional_membership" do
    get professional_membership_url(@professional_membership)
    assert_response :success
  end

  test "should get edit" do
    get edit_professional_membership_url(@professional_membership)
    assert_response :success
  end

  test "should update professional_membership" do
    patch professional_membership_url(@professional_membership), params: { professional_membership: {  } }
    assert_redirected_to professional_membership_url(@professional_membership)
  end

  test "should destroy professional_membership" do
    assert_difference('ProfessionalMembership.count', -1) do
      delete professional_membership_url(@professional_membership)
    end

    assert_redirected_to professional_memberships_url
  end
end
