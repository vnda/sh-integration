require 'test_helper'

class SenderControllerTest < ActionController::TestCase

  test "should post send stat hat" do
    # json = JSON.parse(File.read("test/fixtures/confirmed.json"))
    json = {order: { status: "confirmed" }}.to_json
    post :send_stat_hat, json
    assert_response :success
  end

  end
