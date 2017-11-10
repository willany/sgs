require 'test_helper'

class UsfsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usf = usfs(:one)
  end

  test "should get index" do
    get usfs_url
    assert_response :success
  end

  test "should get new" do
    get new_usf_url
    assert_response :success
  end

  test "should create usf" do
    assert_difference('Usf.count') do
      post usfs_url, params: { usf: { bairro: @usf.bairro, cep: @usf.cep, cnes: @usf.cnes, cnpj: @usf.cnpj, complemento: @usf.complemento, logradouro: @usf.logradouro, nome: @usf.nome, nome_fantasia: @usf.nome_fantasia, numero: @usf.numero, ponto_de_referencia: @usf.ponto_de_referencia, telefone: @usf.telefone } }
    end

    assert_redirected_to usf_url(Usf.last)
  end

  test "should show usf" do
    get usf_url(@usf)
    assert_response :success
  end

  test "should get edit" do
    get edit_usf_url(@usf)
    assert_response :success
  end

  test "should update usf" do
    patch usf_url(@usf), params: { usf: { bairro: @usf.bairro, cep: @usf.cep, cnes: @usf.cnes, cnpj: @usf.cnpj, complemento: @usf.complemento, logradouro: @usf.logradouro, nome: @usf.nome, nome_fantasia: @usf.nome_fantasia, numero: @usf.numero, ponto_de_referencia: @usf.ponto_de_referencia, telefone: @usf.telefone } }
    assert_redirected_to usf_url(@usf)
  end

  test "should destroy usf" do
    assert_difference('Usf.count', -1) do
      delete usf_url(@usf)
    end

    assert_redirected_to usfs_url
  end
end
