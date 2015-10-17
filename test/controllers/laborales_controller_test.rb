require 'test_helper'

class LaboralesControllerTest < ActionController::TestCase
  setup do
    @laboral = laborales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:laborales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create laboral" do
    assert_difference('Laboral.count') do
      post :create, laboral: { correo: @laboral.correo, datoslaborales_id: @laboral.datoslaborales_id, descripcion: @laboral.descripcion, direccion_id: @laboral.direccion_id, empresa_id: @laboral.empresa_id, fechacontrato: @laboral.fechacontrato, telefono_id: @laboral.telefono_id, usuario_id: @laboral.usuario_id }
    end

    assert_redirected_to laboral_path(assigns(:laboral))
  end

  test "should show laboral" do
    get :show, id: @laboral
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @laboral
    assert_response :success
  end

  test "should update laboral" do
    patch :update, id: @laboral, laboral: { correo: @laboral.correo, datoslaborales_id: @laboral.datoslaborales_id, descripcion: @laboral.descripcion, direccion_id: @laboral.direccion_id, empresa_id: @laboral.empresa_id, fechacontrato: @laboral.fechacontrato, telefono_id: @laboral.telefono_id, usuario_id: @laboral.usuario_id }
    assert_redirected_to laboral_path(assigns(:laboral))
  end

  test "should destroy laboral" do
    assert_difference('Laboral.count', -1) do
      delete :destroy, id: @laboral
    end

    assert_redirected_to laborales_path
  end
end
