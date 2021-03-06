require 'test_helper'

class SlasControllerTest < ActionController::TestCase
  setup do
    @sla = slas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:slas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sla" do
    assert_difference('Sla.count') do
      post :create, sla: { activo: @sla.activo, descripcion: @sla.descripcion, nombre: @sla.nombre, porcentajeImportacia: @sla.porcentajeImportacia, sla_id: @sla.sla_id }
    end

    assert_redirected_to sla_path(assigns(:sla))
  end

  test "should show sla" do
    get :show, id: @sla
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sla
    assert_response :success
  end

  test "should update sla" do
    patch :update, id: @sla, sla: { activo: @sla.activo, descripcion: @sla.descripcion, nombre: @sla.nombre, porcentajeImportacia: @sla.porcentajeImportacia, sla_id: @sla.sla_id }
    assert_redirected_to sla_path(assigns(:sla))
  end

  test "should destroy sla" do
    assert_difference('Sla.count', -1) do
      delete :destroy, id: @sla
    end

    assert_redirected_to slas_path
  end
end
