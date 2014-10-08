class StatHatSender

  def initialize(json, user_token)
    @user_token = user_token
    @status = json['status']
    @stat_value = json['total']

  end

  def send!
    case @status
    when 'received'
      @count_stat_name = "Pedidos recebidos - Total"
      @value_stat_name = "Pedidos recebidos - Valor"
    when 'confirmed'
      @count_stat_name = "Pedidos confirmados - Total"
      @value_stat_name = "Pedidos confirmados - Valor"
    when 'cancelled'
      @count_stat_name = "Pedidos cancelados - Total"
      @value_stat_name = "Pedidos cancelados - Valor"
    end
    StatHat::API.ez_post_count(@count_stat_name, @user_token, 1)
    StatHat::API.ez_post_value(@value_stat_name, @user_token, @stat_value)
    end
end
