class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :commentable_id
      t.string :commentable_type
      t.references :user, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
