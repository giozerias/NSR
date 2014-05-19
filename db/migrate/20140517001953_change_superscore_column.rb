class ChangeSuperscoreColumn < ActiveRecord::Migration
  def change
  	change_column :superheros, :superscore,  :decimal, precision: 1, scale: 2
  end
end
