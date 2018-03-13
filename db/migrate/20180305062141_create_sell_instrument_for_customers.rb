class CreateSellInstrumentForCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :sell_instrument_for_customers do |t|
      t.string :dateSell
      t.integer :collInstrumentSell
      t.float :sum

      t.timestamps
    end
  end
end
