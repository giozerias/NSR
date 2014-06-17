class RemoveMatchIdFromSuperhero < ActiveRecord::Migration
  def change
    remove_column :superheros, :match_id, :integer
  end
end
