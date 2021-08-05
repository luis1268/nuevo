require "test_helper"

class TortugasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tortuga = tortugas(:one)
  end

  test "should get index" do
    get tortugas_url
    assert_response :success
  end

  test "should get new" do
    get new_tortuga_url
    assert_response :success
  end

  test "should create tortuga" do
    assert_difference('Tortuga.count') do
      post tortugas_url, params: { tortuga: { apellido: @tortuga.apellido, edad: @tortuga.edad, email: @tortuga.email, name: @tortuga.name } }
    end

    assert_redirected_to tortuga_url(Tortuga.last)
  end

  test "should show tortuga" do
    get tortuga_url(@tortuga)
    assert_response :success
  end

  test "should get edit" do
    get edit_tortuga_url(@tortuga)
    assert_response :success
  end

  test "should update tortuga" do
    patch tortuga_url(@tortuga), params: { tortuga: { apellido: @tortuga.apellido, edad: @tortuga.edad, email: @tortuga.email, name: @tortuga.name } }
    assert_redirected_to tortuga_url(@tortuga)
  end

  test "should destroy tortuga" do
    assert_difference('Tortuga.count', -1) do
      delete tortuga_url(@tortuga)
    end

    assert_redirected_to tortugas_url
  end
end
