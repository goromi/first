require 'test_helper'

class QuizControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get quiz_top_url
    assert_response :success
  end

end
