class CampBXTicker < BitcoinExchangeTicker
  def buy_fields
    ['Best Bid']
  end

  def sell_fields
    ['Best Ask']
  end

  def buy_url
    'http://campbx.com/api/xticker.php'
  end

  def sell_url
    'http://campbx.com/api/xticker.php'
  end
end
