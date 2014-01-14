class AddPhoneToUser < ActiveRecord::Migration
  def change
    add_column :users, :phone, :string, :default => nil
  end
end
