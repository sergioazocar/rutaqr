require 'test_helper'

class SuscripcionesControllerTest < ActionController::TestCase
  setup do
    @suscripcion = suscripciones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:suscripciones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create suscripcion" do
    assert_difference('Suscripcion.count') do
      post :create, suscripcion: { estado: @suscripcion.estado, fecha_inicio: @suscripcion.fecha_inicio, fecha_termino: @suscripcion.fecha_termino, precio: @suscripcion.precio, usuario_id: @suscripcion.usuario_id }
    end

    assert_redirected_to suscripcion_path(assigns(:suscripcion))
  end

  test "should show suscripcion" do
    get :show, id: @suscripcion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @suscripcion
    assert_response :success
  end

  test "should update suscripcion" do
    patch :update, id: @suscripcion, suscripcion: { estado: @suscripcion.estado, fecha_inicio: @suscripcion.fecha_inicio, fecha_termino: @suscripcion.fecha_termino, precio: @suscripcion.precio, usuario_id: @suscripcion.usuario_id }
    assert_redirected_to suscripcion_path(assigns(:suscripcion))
  end

  test "should destroy suscripcion" do
    assert_difference('Suscripcion.count', -1) do
      delete :destroy, id: @suscripcion
    end

    assert_redirected_to suscripciones_path
  end
end
