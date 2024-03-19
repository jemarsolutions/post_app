class CreateSubscriptions < ActiveRecord::Migration[7.1]
  def change
    create_table :subscriptions do |t|
      t.string :email
      t.boolean :confirmed

      t.timestamps
    end
    add_index :subscriptions, :email, unique: true
  end
end
