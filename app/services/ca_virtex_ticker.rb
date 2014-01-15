class CaVirtexTicker < BitcoinExchangeTicker
  def currency
    'CAD'
  end

  def buy_fields
    %w(last)
  end

  def sell_fields
    %w(last)
  end

  def buy_in_usd
    buy.exchange_to 'USD'
  end

  def sell_in_usd
    sell.exchange_to 'USD'
  end

  def buy_url
    'https://www.cavirtex.com/api/CAD/ticker.json'
  end

  def sell_url
    'https://www.cavirtex.com/api/CAD/ticker.json'
  end
end
