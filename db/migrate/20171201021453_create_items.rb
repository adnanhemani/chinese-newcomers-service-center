class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.timestamps null: false
      t.string :client_name
      t.string :client_ssn
    end
  end
end
