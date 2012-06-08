class CreateFixtures < ActiveRecord::Migration
  def change
    create_table :fixtures do |t|
      t.date :matchdate
      t.string :home_team
      t.string :away_team
      t.integer :home_score
      t.integer :away_score
      t.string :winner

      t.timestamps
    end
  end
end
