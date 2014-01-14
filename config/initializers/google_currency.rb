require 'money/bank/google_currency'

# Set the seconds after the current rates are automatically expired.
# By default, they never expire.
Money::Bank::GoogleCurrency.ttl_in_seconds = 3600
