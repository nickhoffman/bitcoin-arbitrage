class BitcoinExchangeTicker
  def initialize
    # This memoizes the response for each unique URL so that multiple requests aren't made for the same URL.
    @responses = Hash.new { |h, url| h[url] = HTTParty.get(url) }
  end

  def buy_field
    raise NotImplementedError, "#{self.class}##{__method__} must be overridden."
  end

  def sell_field
    raise NotImplementedError, "#{self.class}##{__method__} must be overridden."
  end


  def buy_url
    raise NotImplementedError, "#{self.class}##{__method__} must be overridden."
  end

  def sell_url
    raise NotImplementedError, "#{self.class}##{__method__} must be overridden."
  end

  # Override this if you need to.
  def currency
    'USD'
  end

  def buy
    fetch(buy_url).dig(*buy_fields).to_money currency
  end

  def sell
    fetch(sell_url).dig(*sell_fields).to_money currency
  end

  def fetch(url)
    JSON.parse @responses[url].body
  end
end
