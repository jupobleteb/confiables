require 'test_helper'

class DireccionesControllerTest < ActionController::TestCase
  setup do
    @direccion = direcciones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:direcciones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create direccion" do
    assert_difference('Direccion.count') do
      post :create, direccion: { codPostal: @direccion.codPostal, complemento: @direccion.complemento, comuna_id: @direccion.comuna_id, direccion: @direccion.direccion, direccion_id: @direccion.direccion_id, numero: @direccion.numero }
    end

    assert_redirected_to direccion_path(assigns(:direccion))
  end

  test "should show direccion" do
    get :show, id: @direccion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @direccion
    assert_response :success
  end

  test "should update direccion" do
    patch :update, id: @direccion, direccion: { codPostal: @direccion.codPostal, complemento: @direccion.complemento, comuna_id: @direccion.comuna_id, direccion: @direccion.direccion, direccion_id: @direccion.direccion_id, numero: @direccion.numero }
    assert_redirected_to direccion_path(assigns(:direccion))
  end

  test "should destroy direccion" do
    assert_difference('Direccion.count', -1) do
      delete :destroy, id: @direccion
    end

    assert_redirected_to direcciones_path
  end
end
