class RemoveHeroBScoreFromMatches < ActiveRecord::Migration
  def change
    remove_column :matches, :hero_b_score, :integer
  end
end
