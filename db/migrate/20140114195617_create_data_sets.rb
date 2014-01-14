class CreateDataSets < ActiveRecord::Migration
  def change
    create_table :data_sets do |t|
      t.money :cavirtex_cad,    :amount => {:null => true, :default => nil}, :currency => {:present => false}
      t.money :cavirtex_usd,    :amount => {:null => true, :default => nil}, :currency => {:present => false}
      t.money :mtgox,           :amount => {:null => true, :default => nil}, :currency => {:present => false}
      t.money :coinbase,        :amount => {:null => true, :default => nil}, :currency => {:present => false}
      t.money :bitstamp,        :amount => {:null => true, :default => nil}, :currency => {:present => false}
      t.money :btce,            :amount => {:null => true, :default => nil}, :currency => {:present => false}
      t.money :campbx,          :amount => {:null => true, :default => nil}, :currency => {:present => false}
      t.money :cad_to_usd_rate, :amount => {:null => true, :default => nil}, :currency => {:present => false}

      t.timestamps
    end
  end
end
