require "test_helper"

class ServerSoftwaresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @server_software = server_softwares(:one)
  end

  test "should get index" do
    get server_softwares_url
    assert_response :success
  end

  test "should get new" do
    get new_server_software_url
    assert_response :success
  end

  test "should create server_software" do
    assert_difference("ServerSoftware.count") do
      post server_softwares_url, params: { server_software: { server_id: @server_software.server_id, software_id: @server_software.software_id } }
    end

    assert_redirected_to server_software_url(ServerSoftware.last)
  end

  test "should show server_software" do
    get server_software_url(@server_software)
    assert_response :success
  end

  test "should get edit" do
    get edit_server_software_url(@server_software)
    assert_response :success
  end

  test "should update server_software" do
    patch server_software_url(@server_software), params: { server_software: { server_id: @server_software.server_id, software_id: @server_software.software_id } }
    assert_redirected_to server_software_url(@server_software)
  end

  test "should destroy server_software" do
    assert_difference("ServerSoftware.count", -1) do
      delete server_software_url(@server_software)
    end

    assert_redirected_to server_softwares_url
  end
end
