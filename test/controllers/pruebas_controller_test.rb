require 'test_helper'

class PruebasControllerTest < ActionController::TestCase
  setup do
    @prueba = pruebas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pruebas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prueba" do
    assert_difference('Prueba.count') do
      post :create, prueba: { datobinary: @prueba.datobinary, datobollean: @prueba.datobollean, datodate: @prueba.datodate, datodecimal: @prueba.datodecimal, datofecha: @prueba.datofecha, datofloat: @prueba.datofloat, datointeger: @prueba.datointeger, datostring: @prueba.datostring, datotext: @prueba.datotext, datotimestamp: @prueba.datotimestamp }
    end

    assert_redirected_to prueba_path(assigns(:prueba))
  end

  test "should show prueba" do
    get :show, id: @prueba
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prueba
    assert_response :success
  end

  test "should update prueba" do
    patch :update, id: @prueba, prueba: { datobinary: @prueba.datobinary, datobollean: @prueba.datobollean, datodate: @prueba.datodate, datodecimal: @prueba.datodecimal, datofecha: @prueba.datofecha, datofloat: @prueba.datofloat, datointeger: @prueba.datointeger, datostring: @prueba.datostring, datotext: @prueba.datotext, datotimestamp: @prueba.datotimestamp }
    assert_redirected_to prueba_path(assigns(:prueba))
  end

  test "should destroy prueba" do
    assert_difference('Prueba.count', -1) do
      delete :destroy, id: @prueba
    end

    assert_redirected_to pruebas_path
  end
end
