class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :hero_a_id
      t.integer :hero_b_id
      t.integer :hero_a_score
      t.integer :hero_b_score

      t.timestamps
    end
  end
end
