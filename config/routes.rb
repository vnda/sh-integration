ShIntegration::Application.routes.draw do

  root to: "pages#home"

  post 'sender/send_stat_hat' => 'sender#send_stat_hat'

end
