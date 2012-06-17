class UserAccountRole < ActiveRecord::Migration
  def up
    change_table :accounts do |t|
      t.remove :owner_id
    end

    change_table :users do |t|
      t.string :account_role
    end
  end

  def down
  end
end
