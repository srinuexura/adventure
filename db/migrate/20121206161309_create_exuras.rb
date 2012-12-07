class CreateExuras < ActiveRecord::Migration
  def change
    create_table :exuras do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.text :description

      t.timestamps
    end
  end
end
