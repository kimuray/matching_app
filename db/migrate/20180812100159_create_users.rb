class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.integer :age, null: false
      t.integer :address, null: false
      t.integer :sex, null: false
      t.integer :height
      t.integer :weight
      t.text :self_introduction

      t.timestamps
    end
  end
end
