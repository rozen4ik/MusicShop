class CreateInstruments < ActiveRecord::Migration[5.1]
  def change
    create_table :instruments do |t|
      t.string :name
      t.string :type_name
      t.float :price

      t.timestamps
    end
  end
end
