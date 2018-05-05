require 'test_helper'

class UsuariosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get usuarios_index_url
    assert_response :success
  end

  test "should get mostrar" do
    get usuarios_mostrar_url
    assert_response :success
  end

  test "should get eliminar" do
    get usuarios_eliminar_url
    assert_response :success
  end

  test "should get update" do
    get usuarios_update_url
    assert_response :success
  end

  test "should get editar" do
    get usuarios_editar_url
    assert_response :success
  end

  test "should get nuevo" do
    get usuarios_nuevo_url
    assert_response :success
  end

  test "should get crear" do
    get usuarios_crear_url
    assert_response :success
  end

end
