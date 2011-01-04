# ALWAYS TEST WHILE IN DEVELOPMENT!!! 
if ['development','test','staging'].include?(Rails.env)
  ActiveMerchant::Billing::Base.mode = :test
end

ActiveMerchant::Billing::Integrations::Sermepa::Helper.credentials = {
    :terminal_id    => '1',
    :commercial_id  => Rails.env == "staging" ? 'XXXXXXXXXX' : 'XXXXXXXXXX',
    :secret_key     => ActiveMerchant::Billing::Base.mode == :test ? 'XXXXXXXXXX' : 'XXXXXXXXXX'
  }
    
require 'active_merchant/billing/integrations/action_view_helper'
ActionView::Base.send(:include, ActiveMerchant::Billing::Integrations::ActionViewHelper)