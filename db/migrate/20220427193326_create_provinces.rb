class CreateProvinces < ActiveRecord::Migration[7.0]
  def change
    create_table :provinces do |t|
      t.string :name
      t.decimal :gst
      t.decimal :pst
      t.decimal :hst
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
