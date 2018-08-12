class CreateNotLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :not_likes do |t|
      t.references :user, foreign_key: true, null: false
      t.references :target_user, foreign_key: { to_table: :users }, null: false

      t.timestamps
    end
  end
end
