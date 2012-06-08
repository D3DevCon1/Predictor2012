class CreateScorelines < ActiveRecord::Migration
  def change
    create_table :scorelines do |t|
      t.integer :home_score
      t.integer :away_score
      t.string :winner

      t.timestamps
    end
  end
end
