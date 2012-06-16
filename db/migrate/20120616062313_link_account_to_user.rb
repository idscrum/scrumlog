class LinkAccountToUser < ActiveRecord::Migration
  def up
    change_table :users do |t|
      t.references :account  
    end

    change_table :accounts do |t|
      t.integer :owner_id
    end
  end

  def down
  end
end
