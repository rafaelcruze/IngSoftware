require 'test_helper'

class PagosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pagos_index_url
    assert_response :success
  end

  test "should get mostrar" do
    get pagos_mostrar_url
    assert_response :success
  end

  test "should get eliminar" do
    get pagos_eliminar_url
    assert_response :success
  end

  test "should get update" do
    get pagos_update_url
    assert_response :success
  end

  test "should get editar" do
    get pagos_editar_url
    assert_response :success
  end

  test "should get nuevo" do
    get pagos_nuevo_url
    assert_response :success
  end

  test "should get crear" do
    get pagos_crear_url
    assert_response :success
  end

end
