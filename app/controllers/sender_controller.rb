class SenderController < ActionController::Base
  before_action :set_json

  def send_stat_hat
    if @json
      StatHatSender.new(@json).send!
    end
      render json: 'ok'
  end

  private
    def set_json
      @json = JSON.parse(request.body.read)
    end

end
