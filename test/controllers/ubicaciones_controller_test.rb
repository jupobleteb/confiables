require 'test_helper'

class UbicacionesControllerTest < ActionController::TestCase
  setup do
    @ubicacion = ubicaciones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ubicaciones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ubicacion" do
    assert_difference('Ubicacion.count') do
      post :create, ubicacion: { fecha: @ubicacion.fecha, latitud: @ubicacion.latitud, longitud: @ubicacion.longitud, ubicacion_id: @ubicacion.ubicacion_id, usuario_id: @ubicacion.usuario_id }
    end

    assert_redirected_to ubicacion_path(assigns(:ubicacion))
  end

  test "should show ubicacion" do
    get :show, id: @ubicacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ubicacion
    assert_response :success
  end

  test "should update ubicacion" do
    patch :update, id: @ubicacion, ubicacion: { fecha: @ubicacion.fecha, latitud: @ubicacion.latitud, longitud: @ubicacion.longitud, ubicacion_id: @ubicacion.ubicacion_id, usuario_id: @ubicacion.usuario_id }
    assert_redirected_to ubicacion_path(assigns(:ubicacion))
  end

  test "should destroy ubicacion" do
    assert_difference('Ubicacion.count', -1) do
      delete :destroy, id: @ubicacion
    end

    assert_redirected_to ubicaciones_path
  end
end
