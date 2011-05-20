require 'test_helper'

class DocTramitacaosControllerTest < ActionController::TestCase
  setup do
    @doc_tramitacao = doc_tramitacaos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doc_tramitacaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doc_tramitacao" do
    assert_difference('DocTramitacao.count') do
      post :create, :doc_tramitacao => @doc_tramitacao.attributes
    end

    assert_redirected_to doc_tramitacao_path(assigns(:doc_tramitacao))
  end

  test "should show doc_tramitacao" do
    get :show, :id => @doc_tramitacao.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @doc_tramitacao.to_param
    assert_response :success
  end

  test "should update doc_tramitacao" do
    put :update, :id => @doc_tramitacao.to_param, :doc_tramitacao => @doc_tramitacao.attributes
    assert_redirected_to doc_tramitacao_path(assigns(:doc_tramitacao))
  end

  test "should destroy doc_tramitacao" do
    assert_difference('DocTramitacao.count', -1) do
      delete :destroy, :id => @doc_tramitacao.to_param
    end

    assert_redirected_to doc_tramitacaos_path
  end
end
