Configuração da integraçao com StatHat
====================================

Configurando o App
------------------

1. Criar uma conta no [StatHat](http://www.stathat.com)
2. O token inicial é o email cadastrado na conta do StatHat
3. Os stats serão criados conforme os hooks rodarem

#Example hook
name: "order-received", url: "http://vnda-sh-integration/sender/send_stat_hat?user_token=123456789"

ou

name: "order-received", url: "http://vnda-sh-integration/sender/send_stat_hat?user_token=seu@email.com"
