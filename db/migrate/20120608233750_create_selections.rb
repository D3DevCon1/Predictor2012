class CreateSelections < ActiveRecord::Migration
  def change
    create_table :selections do |t|
      t.integer :user_id
      t.integer :match1
      t.integer :match2
      t.integer :match3
      t.integer :match4
      t.integer :match5
      t.integer :match6
      t.integer :match7
      t.integer :match8

      t.timestamps
    end
  end
end
