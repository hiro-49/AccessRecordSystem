require "test_helper"

class RecordsControllerTest < ActionDispatch::IntegrationTest
  test "should get record" do
    get records_record_url
    assert_response :success
  end
end
