class SenderController < ActionController::Base
  before_action :set_user_and_json

  def send_stat_hat
    if @user_token && @json
      StatHatSender.new(@json, @user_token).send!
    end
      render json: 'ok'
  end

  private

    def set_user_and_json
      @user_token = params["user_token"]
      @json = JSON.parse(request.body.read)
    end

end
