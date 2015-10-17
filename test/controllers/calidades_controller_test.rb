require 'test_helper'

class CalidadesControllerTest < ActionController::TestCase
  setup do
    @calidad = calidades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:calidades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create calidad" do
    assert_difference('Calidad.count') do
      post :create, calidad: { calidad_id: @calidad.calidad_id, contrato_id: @calidad.contrato_id, sla_id: @calidad.sla_id, valor: @calidad.valor }
    end

    assert_redirected_to calidad_path(assigns(:calidad))
  end

  test "should show calidad" do
    get :show, id: @calidad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @calidad
    assert_response :success
  end

  test "should update calidad" do
    patch :update, id: @calidad, calidad: { calidad_id: @calidad.calidad_id, contrato_id: @calidad.contrato_id, sla_id: @calidad.sla_id, valor: @calidad.valor }
    assert_redirected_to calidad_path(assigns(:calidad))
  end

  test "should destroy calidad" do
    assert_difference('Calidad.count', -1) do
      delete :destroy, id: @calidad
    end

    assert_redirected_to calidades_path
  end
end
