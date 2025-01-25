class AddCategoryReferenceToProducts < ActiveRecord::Migration[8.0]
  def change
    add_reference :products, :category, foreign_key: { on_delete: :cascade }, null: true
  end
end
