class CreateSectionRoute < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.references :location
      t.string :name
      t.timestamps
    end

    create_table :routes do |t|
      t.references :section
      t.string :name
      t.timestamps
    end
  end
end
