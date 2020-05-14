class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.belongs_to :user
      t.string :name
      t.string :amount
      t.string :status

      t.timestamps
    end
  end
end
