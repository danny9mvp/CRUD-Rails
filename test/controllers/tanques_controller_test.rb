require 'test_helper'

class TanquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tanque = tanques(:one)
  end

  test "should get index" do
    get tanques_url
    assert_response :success
  end

  test "should get new" do
    get new_tanque_url
    assert_response :success
  end

  test "should create tanque" do
    assert_difference('Tanque.count') do
      post tanques_url, params: { tanque: { caracteristicas: @tanque.caracteristicas, nombre: @tanque.nombre } }
    end

    assert_redirected_to tanque_url(Tanque.last)
  end

  test "should show tanque" do
    get tanque_url(@tanque)
    assert_response :success
  end

  test "should get edit" do
    get edit_tanque_url(@tanque)
    assert_response :success
  end

  test "should update tanque" do
    patch tanque_url(@tanque), params: { tanque: { caracteristicas: @tanque.caracteristicas, nombre: @tanque.nombre } }
    assert_redirected_to tanque_url(@tanque)
  end

  test "should destroy tanque" do
    assert_difference('Tanque.count', -1) do
      delete tanque_url(@tanque)
    end

    assert_redirected_to tanques_url
  end
end
