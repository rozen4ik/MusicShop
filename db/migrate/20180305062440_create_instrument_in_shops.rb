class CreateInstrumentInShops < ActiveRecord::Migration[5.1]
  def change
    create_table :instrument_in_shops do |t|
      t.string :date
      t.integer :numberDoc
      t.string :nameCompany
      t.integer :collInstrument
      t.float :sumAll

      t.timestamps
    end
  end
end
