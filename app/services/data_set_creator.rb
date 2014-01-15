class DataSetCreator
  attr_reader :data_set

  def initialize
    @data_set = DataSet.new
  end

  def create
    build
    save
  end

  def build
    set_cad_to_usd_rate

    set_cavirtex_prices
    set_mtgox_prices
    set_coinbase_prices
    set_bitstamp_prices
    set_btce_prices
    set_campbx_prices

    @data_set
  end

  def save
    @data_set.save
  end

  def set_cad_to_usd_rate
    # Ensure that the default bank grabs the exchange rate.
    Money.new(100, 'CAD').exchange_to 'USD'

    # Multiply by 10,000 so that we have 4 decimal digits.
    @data_set.cad_to_usd_rate_cents = (Money.default_bank.rates['CAD_TO_USD'] * 10_000).to_i
  end

  def set_cavirtex_prices
    ticker = CaVirtexTicker.new

    @data_set.cavirtex_cad_buy  = ticker.buy
    @data_set.cavirtex_cad_sell = ticker.sell

    @data_set.cavirtex_usd_buy  = ticker.buy_in_usd
    @data_set.cavirtex_usd_sell = ticker.sell_in_usd
  end

  def set_mtgox_prices
    @data_set.mtgox_buy   = MtGox.ticker.buy
    @data_set.mtgox_sell  = MtGox.ticker.sell
  end

  def set_coinbase_prices
    ticker = CoinbaseTicker.new

    @data_set.coinbase_buy  = ticker.buy
    @data_set.coinbase_sell = ticker.sell
  end

  def set_bitstamp_prices
    @data_set.bitstamp_buy  = Bitstamp.ticker.bid
    @data_set.bitstamp_sell = Bitstamp.ticker.ask
  end

  def set_btce_prices
    ticker = Btce::Ticker.new 'btc_usd'

    @data_set.btce_buy  = ticker.buy
    @data_set.btce_sell = ticker.sell
  end

  def set_campbx_prices
    ticker = CampBXTicker.new

    @data_set.campbx_buy  = ticker.buy
    @data_set.campbx_sell = ticker.sell
  end
end
