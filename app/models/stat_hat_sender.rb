class StatHatSender

  def initialize(json, user_token)
    @user_token = user_token
    @stat_name = json['stat_name']
    @stat_value = json['stat_value']
    @event_type = json['event_type']
  end

  def send!
    case @event_type
    when 'value' then StatHat::API.ez_post_value(@stat_name, @user_token, @stat_value)
    when 'count' then StatHat::API.ez_post_count(@stat_name, @user_token, @stat_value)
    end
  end

end
