require 'test_helper'

class RunningMeasurementsControllerTest < ActionController::TestCase
  setup do
    @running_measurement = running_measurements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:running_measurements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create running_measurement" do
    assert_difference('RunningMeasurement.count') do
      post :create, running_measurement: { calories: @running_measurement.calories, distance_miles: @running_measurement.distance_miles, duration_seconds: @running_measurement.duration_seconds }
    end

    assert_redirected_to running_measurement_path(assigns(:running_measurement))
  end

  test "should show running_measurement" do
    get :show, id: @running_measurement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @running_measurement
    assert_response :success
  end

  test "should update running_measurement" do
    patch :update, id: @running_measurement, running_measurement: { calories: @running_measurement.calories, distance_miles: @running_measurement.distance_miles, duration_seconds: @running_measurement.duration_seconds }
    assert_redirected_to running_measurement_path(assigns(:running_measurement))
  end

  test "should destroy running_measurement" do
    assert_difference('RunningMeasurement.count', -1) do
      delete :destroy, id: @running_measurement
    end

    assert_redirected_to running_measurements_path
  end
end
