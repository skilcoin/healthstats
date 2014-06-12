require 'test_helper'

class BodyMeasurementsControllerTest < ActionController::TestCase
  setup do
    @body_measurement = body_measurements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:body_measurements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create body_measurement" do
    assert_difference('BodyMeasurement.count') do
      post :create, body_measurement: { bodyFat: @body_measurement.bodyFat, measurementDate: @body_measurement.measurementDate, occurrence: @body_measurement.occurrence, weight: @body_measurement.weight }
    end

    assert_redirected_to body_measurement_path(assigns(:body_measurement))
  end

  test "should show body_measurement" do
    get :show, id: @body_measurement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @body_measurement
    assert_response :success
  end

  test "should update body_measurement" do
    patch :update, id: @body_measurement, body_measurement: { bodyFat: @body_measurement.bodyFat, measurementDate: @body_measurement.measurementDate, occurrence: @body_measurement.occurrence, weight: @body_measurement.weight }
    assert_redirected_to body_measurement_path(assigns(:body_measurement))
  end

  test "should destroy body_measurement" do
    assert_difference('BodyMeasurement.count', -1) do
      delete :destroy, id: @body_measurement
    end

    assert_redirected_to body_measurements_path
  end
end
