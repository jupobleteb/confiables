require 'test_helper'

class ComunasControllerTest < ActionController::TestCase
  setup do
    @comuna = comunas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comunas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comuna" do
    assert_difference('Comuna.count') do
      post :create, comuna: { comuna_id: @comuna.comuna_id, nombre: @comuna.nombre, pais: @comuna.pais, region: @comuna.region }
    end

    assert_redirected_to comuna_path(assigns(:comuna))
  end

  test "should show comuna" do
    get :show, id: @comuna
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comuna
    assert_response :success
  end

  test "should update comuna" do
    patch :update, id: @comuna, comuna: { comuna_id: @comuna.comuna_id, nombre: @comuna.nombre, pais: @comuna.pais, region: @comuna.region }
    assert_redirected_to comuna_path(assigns(:comuna))
  end

  test "should destroy comuna" do
    assert_difference('Comuna.count', -1) do
      delete :destroy, id: @comuna
    end

    assert_redirected_to comunas_path
  end
end
