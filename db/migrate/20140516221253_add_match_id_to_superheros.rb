class AddMatchIdToSuperheros < ActiveRecord::Migration
  def change
    add_column :superheros, :match_id, :integer
  end
end
