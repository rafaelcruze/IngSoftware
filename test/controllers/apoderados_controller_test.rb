require 'test_helper'

class ApoderadosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get apoderados_index_url
    assert_response :success
  end

  test "should get editar" do
    get apoderados_editar_url
    assert_response :success
  end

  test "should get mostrar" do
    get apoderados_mostrar_url
    assert_response :success
  end

  test "should get nuevo" do
    get apoderados_nuevo_url
    assert_response :success
  end

  test "should get update" do
    get apoderados_update_url
    assert_response :success
  end

  test "should get eliminar" do
    get apoderados_eliminar_url
    assert_response :success
  end

end
