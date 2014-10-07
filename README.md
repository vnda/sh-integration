sh-integration
==============

StatHat integration for reports

#Example hook
HooksService.run("order_confirmed").with({stat_name: 'order confirmed5', stat_value: 1, event_type: 'count'})
