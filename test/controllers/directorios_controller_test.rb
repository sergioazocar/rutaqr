require 'test_helper'

class DirectoriosControllerTest < ActionController::TestCase
  setup do
    @directorio = directorios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:directorios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create directorio" do
    assert_difference('Directorio.count') do
      post :create, directorio: { categoria_id: @directorio.categoria_id, celular: @directorio.celular, ciudad: @directorio.ciudad, codigo_qr: @directorio.codigo_qr, correo: @directorio.correo, descripcion_corta: @directorio.descripcion_corta, descripcion_larga: @directorio.descripcion_larga, direccion: @directorio.direccion, facebook: @directorio.facebook, foto_perfil: @directorio.foto_perfil, foto_portada: @directorio.foto_portada, latitud: @directorio.latitud, longitud: @directorio.longitud, nombre: @directorio.nombre, pais: @directorio.pais, sitio_web: @directorio.sitio_web, slug: @directorio.slug, telefono: @directorio.telefono, twitter: @directorio.twitter, usuario_id: @directorio.usuario_id, youtube: @directorio.youtube }
    end

    assert_redirected_to directorio_path(assigns(:directorio))
  end

  test "should show directorio" do
    get :show, id: @directorio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @directorio
    assert_response :success
  end

  test "should update directorio" do
    patch :update, id: @directorio, directorio: { categoria_id: @directorio.categoria_id, celular: @directorio.celular, ciudad: @directorio.ciudad, codigo_qr: @directorio.codigo_qr, correo: @directorio.correo, descripcion_corta: @directorio.descripcion_corta, descripcion_larga: @directorio.descripcion_larga, direccion: @directorio.direccion, facebook: @directorio.facebook, foto_perfil: @directorio.foto_perfil, foto_portada: @directorio.foto_portada, latitud: @directorio.latitud, longitud: @directorio.longitud, nombre: @directorio.nombre, pais: @directorio.pais, sitio_web: @directorio.sitio_web, slug: @directorio.slug, telefono: @directorio.telefono, twitter: @directorio.twitter, usuario_id: @directorio.usuario_id, youtube: @directorio.youtube }
    assert_redirected_to directorio_path(assigns(:directorio))
  end

  test "should destroy directorio" do
    assert_difference('Directorio.count', -1) do
      delete :destroy, id: @directorio
    end

    assert_redirected_to directorios_path
  end
end
