class DataSet < ActiveRecord::Base
  monetize :cavirtex_cad_cents,     :allow_nil => true
  monetize :cavirtex_usd_cents,     :allow_nil => true
  monetize :mtgox_cents,            :allow_nil => true
  monetize :coinbase_cents,         :allow_nil => true
  monetize :bitstamp_cents,         :allow_nil => true
  monetize :btce_cents,             :allow_nil => true
  monetize :campbx_cents,           :allow_nil => true
  monetize :cad_to_usd_rate_cents,  :allow_nil => true
end
