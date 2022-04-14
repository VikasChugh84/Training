require "application_system_test_case"

class ProjectPagesTest < ApplicationSystemTestCase
  setup do
    @project_page = project_pages(:one)
  end

  test "visiting the index" do
    visit project_pages_url
    assert_selector "h1", text: "Project pages"
  end

  test "should create project page" do
    visit project_pages_url
    click_on "New project page"

    click_on "Create Project page"

    assert_text "Project page was successfully created"
    click_on "Back"
  end

  test "should update Project page" do
    visit project_page_url(@project_page)
    click_on "Edit this project page", match: :first

    click_on "Update Project page"

    assert_text "Project page was successfully updated"
    click_on "Back"
  end

  test "should destroy Project page" do
    visit project_page_url(@project_page)
    click_on "Destroy this project page", match: :first

    assert_text "Project page was successfully destroyed"
  end
end
