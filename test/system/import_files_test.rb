require "application_system_test_case"

class ImportFilesTest < ApplicationSystemTestCase
  setup do
    @import_file = import_files(:one)
  end

  test "visiting the index" do
    visit import_files_url
    assert_selector "h1", text: "Import Files"
  end

  test "creating a Import file" do
    visit import_files_url
    click_on "New Import File"

    fill_in "File Name", with: @import_file.file_name
    fill_in "Uploaded At", with: @import_file.uploaded_at
    click_on "Create Import file"

    assert_text "Import file was successfully created"
    click_on "Back"
  end

  test "updating a Import file" do
    visit import_files_url
    click_on "Edit", match: :first

    fill_in "File Name", with: @import_file.file_name
    fill_in "Uploaded At", with: @import_file.uploaded_at
    click_on "Update Import file"

    assert_text "Import file was successfully updated"
    click_on "Back"
  end

  test "destroying a Import file" do
    visit import_files_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Import file was successfully destroyed"
  end
end
