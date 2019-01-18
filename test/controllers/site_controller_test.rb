require 'test_helper'

class SiteControllerTest < ActionDispatch::IntegrationTest
  test "should get contacts" do
    get site_contacts_url
    assert_response :success
  end

end
