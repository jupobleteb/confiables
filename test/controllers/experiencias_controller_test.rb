require 'test_helper'

class ExperienciasControllerTest < ActionController::TestCase
  setup do
    @experiencia = experiencias(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:experiencias)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create experiencia" do
    assert_difference('Experiencia.count') do
      post :create, experiencia: { cargo: @experiencia.cargo, descripcion: @experiencia.descripcion, empresa_id: @experiencia.empresa_id, experiencia_id: @experiencia.experiencia_id, fechaFin: @experiencia.fechaFin, fechaInicio: @experiencia.fechaInicio, laboral_id: @experiencia.laboral_id, rubro: @experiencia.rubro }
    end

    assert_redirected_to experiencia_path(assigns(:experiencia))
  end

  test "should show experiencia" do
    get :show, id: @experiencia
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @experiencia
    assert_response :success
  end

  test "should update experiencia" do
    patch :update, id: @experiencia, experiencia: { cargo: @experiencia.cargo, descripcion: @experiencia.descripcion, empresa_id: @experiencia.empresa_id, experiencia_id: @experiencia.experiencia_id, fechaFin: @experiencia.fechaFin, fechaInicio: @experiencia.fechaInicio, laboral_id: @experiencia.laboral_id, rubro: @experiencia.rubro }
    assert_redirected_to experiencia_path(assigns(:experiencia))
  end

  test "should destroy experiencia" do
    assert_difference('Experiencia.count', -1) do
      delete :destroy, id: @experiencia
    end

    assert_redirected_to experiencias_path
  end
end
