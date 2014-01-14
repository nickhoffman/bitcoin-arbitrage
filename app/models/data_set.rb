class DataSet < ActiveRecord::Base
  # The "cad_to_usd_rate_cents" field represents the rate to 4 decimal places.
  # This represents the divisor needed to convert the field to a decimal.
  CAD_TO_USD_RATE_DIVISOR = 10_000

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

  def cad_to_usd_rate
    BigDecimal.new(cad_to_usd_rate_cents) / CAD_TO_USD_RATE_DIVISOR
  end
end
