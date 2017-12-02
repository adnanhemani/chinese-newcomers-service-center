class AddForeignKeys < ActiveRecord::Migration
  def change
    add_foreign_key :form_b, :items
    add_foreign_key :form_k, :items
  end
end
