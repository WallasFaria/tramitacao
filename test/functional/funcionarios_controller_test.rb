require 'test_helper'

class FuncionariosControllerTest < ActionController::TestCase
  setup do
    @funcionario = funcionarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:funcionarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create funcionario" do
    assert_difference('Funcionario.count') do
      post :create, :funcionario => @funcionario.attributes
    end

    assert_redirected_to funcionario_path(assigns(:funcionario))
  end

  test "should show funcionario" do
    get :show, :id => @funcionario.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @funcionario.to_param
    assert_response :success
  end

  test "should update funcionario" do
    put :update, :id => @funcionario.to_param, :funcionario => @funcionario.attributes
    assert_redirected_to funcionario_path(assigns(:funcionario))
  end

  test "should destroy funcionario" do
    assert_difference('Funcionario.count', -1) do
      delete :destroy, :id => @funcionario.to_param
    end

    assert_redirected_to funcionarios_path
  end
end
