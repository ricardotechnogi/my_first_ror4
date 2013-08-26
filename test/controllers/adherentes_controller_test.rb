require 'test_helper'

class AdherentesControllerTest < ActionController::TestCase
  setup do
    @adherente = adherentes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adherentes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adherente" do
    assert_difference('Adherente.count') do
      post :create, adherente: { nombre: @adherente.nombre, user_id: @adherente.user_id }
    end

    assert_redirected_to adherente_path(assigns(:adherente))
  end

  test "should show adherente" do
    get :show, id: @adherente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adherente
    assert_response :success
  end

  test "should update adherente" do
    patch :update, id: @adherente, adherente: { nombre: @adherente.nombre, user_id: @adherente.user_id }
    assert_redirected_to adherente_path(assigns(:adherente))
  end

  test "should destroy adherente" do
    assert_difference('Adherente.count', -1) do
      delete :destroy, id: @adherente
    end

    assert_redirected_to adherentes_path
  end
end
