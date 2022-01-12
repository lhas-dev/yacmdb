require "application_system_test_case"

class ServerSoftwaresTest < ApplicationSystemTestCase
  setup do
    @server_software = server_softwares(:one)
  end

  test "visiting the index" do
    visit server_softwares_url
    assert_selector "h1", text: "Server softwares"
  end

  test "should create server software" do
    visit server_softwares_url
    click_on "New server software"

    fill_in "Server", with: @server_software.server_id
    fill_in "Software", with: @server_software.software_id
    click_on "Create Server software"

    assert_text "Server software was successfully created"
    click_on "Back"
  end

  test "should update Server software" do
    visit server_software_url(@server_software)
    click_on "Edit this server software", match: :first

    fill_in "Server", with: @server_software.server_id
    fill_in "Software", with: @server_software.software_id
    click_on "Update Server software"

    assert_text "Server software was successfully updated"
    click_on "Back"
  end

  test "should destroy Server software" do
    visit server_software_url(@server_software)
    click_on "Destroy this server software", match: :first

    assert_text "Server software was successfully destroyed"
  end
end
