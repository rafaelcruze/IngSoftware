require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_index_url
    assert_response :success
  end

  test "should get mostrar" do
    get users_mostrar_url
    assert_response :success
  end

  test "should get nuevo" do
    get users_nuevo_url
    assert_response :success
  end

  test "should get eliminar" do
    get users_eliminar_url
    assert_response :success
  end

  test "should get update" do
    get users_update_url
    assert_response :success
  end

  test "should get editar" do
    get users_editar_url
    assert_response :success
  end

  test "should get crear" do
    get users_crear_url
    assert_response :success
  end

end
