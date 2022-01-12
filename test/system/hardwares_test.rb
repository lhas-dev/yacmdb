require "application_system_test_case"

class HardwaresTest < ApplicationSystemTestCase
  setup do
    @hardware = hardwares(:one)
  end

  test "visiting the index" do
    visit hardwares_url
    assert_selector "h1", text: "Hardwares"
  end

  test "should create hardware" do
    visit hardwares_url
    click_on "New hardware"

    fill_in "Category", with: @hardware.category
    fill_in "Server", with: @hardware.server_id
    fill_in "Value", with: @hardware.value
    click_on "Create Hardware"

    assert_text "Hardware was successfully created"
    click_on "Back"
  end

  test "should update Hardware" do
    visit hardware_url(@hardware)
    click_on "Edit this hardware", match: :first

    fill_in "Category", with: @hardware.category
    fill_in "Server", with: @hardware.server_id
    fill_in "Value", with: @hardware.value
    click_on "Update Hardware"

    assert_text "Hardware was successfully updated"
    click_on "Back"
  end

  test "should destroy Hardware" do
    visit hardware_url(@hardware)
    click_on "Destroy this hardware", match: :first

    assert_text "Hardware was successfully destroyed"
  end
end
