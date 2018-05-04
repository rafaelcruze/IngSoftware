require 'test_helper'

class EstudiantesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get estudiantes_index_url
    assert_response :success
  end

  test "should get mostrar" do
    get estudiantes_mostrar_url
    assert_response :success
  end

  test "should get eliminar" do
    get estudiantes_eliminar_url
    assert_response :success
  end

  test "should get update" do
    get estudiantes_update_url
    assert_response :success
  end

  test "should get editar" do
    get estudiantes_editar_url
    assert_response :success
  end

  test "should get nuevo" do
    get estudiantes_nuevo_url
    assert_response :success
  end

  test "should get crear" do
    get estudiantes_crear_url
    assert_response :success
  end

end
