require 'test_helper'

class BloggControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get blogg_index_url
    assert_response :success
  end

end
