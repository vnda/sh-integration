require 'test_helper'

class ShIntegrationTest < ActiveSupport::TestCase

  test 'stathat ez post value' do
    StatHat::API.ez_post_value("test ez value stat", "test@stathat.com", 0.92) do |resp|
      assert(resp.valid?, "response was invalid")
      assert_equal(resp.msg, "ok", "message should be 'ok'")
      assert_equal(resp.status, 200, "status should be 200")
    end
  end

  test 'stathat ez post count' do
    StatHat::API.ez_post_count("test ez value stat", "test@stathat.com", 1) do |resp|
      assert(resp.valid?, "response was invalid")
      assert_equal(resp.msg, "ok", "message should be 'ok'")
      assert_equal(resp.status, 200, "status should be 200")
    end
  end

end
