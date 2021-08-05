require "test_helper"

class AngelitoprosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @angelitopro = angelitopros(:one)
  end

  test "should get index" do
    get angelitopros_url
    assert_response :success
  end

  test "should get new" do
    get new_angelitopro_url
    assert_response :success
  end

  test "should create angelitopro" do
    assert_difference('Angelitopro.count') do
      post angelitopros_url, params: { angelitopro: { apellido: @angelitopro.apellido, edad: @angelitopro.edad, email: @angelitopro.email, name: @angelitopro.name } }
    end

    assert_redirected_to angelitopro_url(Angelitopro.last)
  end

  test "should show angelitopro" do
    get angelitopro_url(@angelitopro)
    assert_response :success
  end

  test "should get edit" do
    get edit_angelitopro_url(@angelitopro)
    assert_response :success
  end

  test "should update angelitopro" do
    patch angelitopro_url(@angelitopro), params: { angelitopro: { apellido: @angelitopro.apellido, edad: @angelitopro.edad, email: @angelitopro.email, name: @angelitopro.name } }
    assert_redirected_to angelitopro_url(@angelitopro)
  end

  test "should destroy angelitopro" do
    assert_difference('Angelitopro.count', -1) do
      delete angelitopro_url(@angelitopro)
    end

    assert_redirected_to angelitopros_url
  end
end
