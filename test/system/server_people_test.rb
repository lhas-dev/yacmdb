require "application_system_test_case"

class ServerPeopleTest < ApplicationSystemTestCase
  setup do
    @server_person = server_people(:one)
  end

  test "visiting the index" do
    visit server_people_url
    assert_selector "h1", text: "Server people"
  end

  test "should create server person" do
    visit server_people_url
    click_on "New server person"

    fill_in "People", with: @server_person.people_id
    fill_in "Server", with: @server_person.server_id
    click_on "Create Server person"

    assert_text "Server person was successfully created"
    click_on "Back"
  end

  test "should update Server person" do
    visit server_person_url(@server_person)
    click_on "Edit this server person", match: :first

    fill_in "People", with: @server_person.people_id
    fill_in "Server", with: @server_person.server_id
    click_on "Update Server person"

    assert_text "Server person was successfully updated"
    click_on "Back"
  end

  test "should destroy Server person" do
    visit server_person_url(@server_person)
    click_on "Destroy this server person", match: :first

    assert_text "Server person was successfully destroyed"
  end
end
