class ChangeColumn < ActiveRecord::Migration
  def change
  	change_column :superheros, :superscore,  :decimal
  end
end
