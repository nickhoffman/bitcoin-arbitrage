class CoinbaseTicker < BitcoinExchangeTicker
  def buy_fields
    %w(subtotal amount)
  end

  def sell_fields
    %w(subtotal amount)
  end

  def buy_url
    'https://coinbase.com/api/v1/prices/buy'
  end

  def sell_url
    'https://coinbase.com/api/v1/prices/sell'
  end
end
