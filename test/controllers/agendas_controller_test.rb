require 'test_helper'

class AgendasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get agendas_index_url
    assert_response :success
  end

  test "should get mostrareliminar" do
    get agendas_mostrareliminar_url
    assert_response :success
  end

  test "should get update" do
    get agendas_update_url
    assert_response :success
  end

  test "should get editar" do
    get agendas_editar_url
    assert_response :success
  end

  test "should get nuevo" do
    get agendas_nuevo_url
    assert_response :success
  end

  test "should get crear" do
    get agendas_crear_url
    assert_response :success
  end

end
