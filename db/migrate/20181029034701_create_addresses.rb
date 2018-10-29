class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :home_number
      t.text :street_name
      t.string :suburb
      t.integer :postcode
      t.string :country
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
