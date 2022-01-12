require "test_helper"

class ServerPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @server_person = server_people(:one)
  end

  test "should get index" do
    get server_people_url
    assert_response :success
  end

  test "should get new" do
    get new_server_person_url
    assert_response :success
  end

  test "should create server_person" do
    assert_difference("ServerPerson.count") do
      post server_people_url, params: { server_person: { people_id: @server_person.people_id, server_id: @server_person.server_id } }
    end

    assert_redirected_to server_person_url(ServerPerson.last)
  end

  test "should show server_person" do
    get server_person_url(@server_person)
    assert_response :success
  end

  test "should get edit" do
    get edit_server_person_url(@server_person)
    assert_response :success
  end

  test "should update server_person" do
    patch server_person_url(@server_person), params: { server_person: { people_id: @server_person.people_id, server_id: @server_person.server_id } }
    assert_redirected_to server_person_url(@server_person)
  end

  test "should destroy server_person" do
    assert_difference("ServerPerson.count", -1) do
      delete server_person_url(@server_person)
    end

    assert_redirected_to server_people_url
  end
end
