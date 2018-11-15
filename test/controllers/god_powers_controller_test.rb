require 'test_helper'

class GodPowersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get god_powers_new_url
    assert_response :success
  end

end
