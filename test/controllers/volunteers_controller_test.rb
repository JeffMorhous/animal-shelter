require "test_helper"

class VolunteersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @volunteer = volunteers(:one)
  end

  test "should get index" do
    get volunteers_url, as: :json
    assert_response :success
  end

  test "should create volunteer" do
    assert_difference("Volunteer.count") do
      post volunteers_url, params: { volunteer: { cumulative_hours: @volunteer.cumulative_hours, name: @volunteer.name } }, as: :json
    end

    assert_response :created
  end

  test "should show volunteer" do
    get volunteer_url(@volunteer), as: :json
    assert_response :success
  end

  test "should update volunteer" do
    patch volunteer_url(@volunteer), params: { volunteer: { cumulative_hours: @volunteer.cumulative_hours, name: @volunteer.name } }, as: :json
    assert_response :success
  end

  test "should destroy volunteer" do
    assert_difference("Volunteer.count", -1) do
      delete volunteer_url(@volunteer), as: :json
    end

    assert_response :no_content
  end
end
