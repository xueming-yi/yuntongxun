class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :sid
      t.string :token
      t.string :name
      t.integer :status, default: 0
      t.float :balance, default: 100
      t.references :user, index: true

      t.timestamps
    end
  end
end
