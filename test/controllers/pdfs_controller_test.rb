require "test_helper"

class PdfControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get pdf_create_url
    assert_response :success
  end
end
