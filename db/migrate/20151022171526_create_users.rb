class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false, unique: true
      t.integer :total_score, default: 0
    end
  end
end
