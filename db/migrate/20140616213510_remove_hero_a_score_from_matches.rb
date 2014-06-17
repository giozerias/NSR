class RemoveHeroAScoreFromMatches < ActiveRecord::Migration
  def change
    remove_column :matches, :hero_a_score, :integer
  end
end
