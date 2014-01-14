class DataSet < ActiveRecord::Base
  monetize :cavirtex_cad_buy_cents,  :allow_nil => true
  monetize :cavirtex_cad_sell_cents, :allow_nil => true

  monetize :cavirtex_usd_buy_cents,  :allow_nil => true
  monetize :cavirtex_usd_sell_cents, :allow_nil => true

  monetize :mtgox_buy_cents,         :allow_nil => true
  monetize :mtgox_sell_cents,        :allow_nil => true

  monetize :coinbase_buy_cents,      :allow_nil => true
  monetize :coinbase_sell_cents,     :allow_nil => true

  monetize :bitstamp_buy_cents,      :allow_nil => true
  monetize :bitstamp_sell_cents,     :allow_nil => true

  monetize :btce_buy_cents,          :allow_nil => true
  monetize :btce_sell_cents,         :allow_nil => true

  monetize :campbx_buy_cents,        :allow_nil => true
  monetize :campbx_sell_cents,       :allow_nil => true

  monetize :cad_to_usd_rate_cents,   :allow_nil => true
end
