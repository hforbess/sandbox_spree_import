require 'test_helper'

class ImportFilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @import_file = import_files(:one)
  end

  test "should get index" do
    get import_files_url
    assert_response :success
  end

  test "should get new" do
    get new_import_file_url
    assert_response :success
  end

  test "should create import_file" do
    assert_difference('ImportFile.count') do
      post import_files_url, params: { import_file: { file_name: @import_file.file_name, uploaded_at: @import_file.uploaded_at } }
    end

    assert_redirected_to import_file_url(ImportFile.last)
  end

  test "should show import_file" do
    get import_file_url(@import_file)
    assert_response :success
  end

  test "should get edit" do
    get edit_import_file_url(@import_file)
    assert_response :success
  end

  test "should update import_file" do
    patch import_file_url(@import_file), params: { import_file: { file_name: @import_file.file_name, uploaded_at: @import_file.uploaded_at } }
    assert_redirected_to import_file_url(@import_file)
  end

  test "should destroy import_file" do
    assert_difference('ImportFile.count', -1) do
      delete import_file_url(@import_file)
    end

    assert_redirected_to import_files_url
  end
end
