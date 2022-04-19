class AddCategoryToProducts < ActiveRecord::Migration[7.0]
  disable_ddl_transaction!
  def change
    add_reference :products, :category, null: false, foreign_key: true
  end
end
