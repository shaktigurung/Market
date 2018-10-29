class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :stripe_charge_id
      t.references :address, foreign_key: true
      t.references :user, foreign_key: true
      t.decimal :total_amount

      t.timestamps
    end
  end
end
