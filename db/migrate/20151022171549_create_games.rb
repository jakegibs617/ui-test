class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :score, null: false
      t.belongs_to :user, null: false
    end
  end
end
