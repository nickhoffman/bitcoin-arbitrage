class CreateDataSets < ActiveRecord::Migration
  def change
    create_table :data_sets do |t|
      t.money :cavirtex_cad_buy,  :amount => {:null => true, :default => nil}, :currency => {:present => false}
      t.money :cavirtex_cad_sell, :amount => {:null => true, :default => nil}, :currency => {:present => false}

      t.money :cavirtex_usd_buy,  :amount => {:null => true, :default => nil}, :currency => {:present => false}
      t.money :cavirtex_usd_sell, :amount => {:null => true, :default => nil}, :currency => {:present => false}

      t.money :mtgox_buy,         :amount => {:null => true, :default => nil}, :currency => {:present => false}
      t.money :mtgox_sell,        :amount => {:null => true, :default => nil}, :currency => {:present => false}

      t.money :coinbase_buy,      :amount => {:null => true, :default => nil}, :currency => {:present => false}
      t.money :coinbase_sell,     :amount => {:null => true, :default => nil}, :currency => {:present => false}

      t.money :bitstamp_buy,      :amount => {:null => true, :default => nil}, :currency => {:present => false}
      t.money :bitstamp_sell,     :amount => {:null => true, :default => nil}, :currency => {:present => false}

      t.money :btce_buy,          :amount => {:null => true, :default => nil}, :currency => {:present => false}
      t.money :btce_sell,         :amount => {:null => true, :default => nil}, :currency => {:present => false}

      t.money :campbx_buy,        :amount => {:null => true, :default => nil}, :currency => {:present => false}
      t.money :campbx_sell,       :amount => {:null => true, :default => nil}, :currency => {:present => false}

      # Don't use t.money here because we want to store 4 decimal digits.
      t.integer :cad_to_usd_rate_cents

      t.timestamps
    end
  end
end
