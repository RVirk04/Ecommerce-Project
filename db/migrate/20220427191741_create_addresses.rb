class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :address1
      t.string :address2
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
