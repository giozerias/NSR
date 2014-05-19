class CreateSuperheros < ActiveRecord::Migration
  def change
    create_table :superheros do |t|
      t.string :name
      t.string :city
      t.string :superpower
      t.integer :superscore

      t.timestamps
    end
  end
end
