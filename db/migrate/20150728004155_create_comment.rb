class CreateComment < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :record
      t.text :comment
      t.boolean :public
      t.timestamps
    end
  end
end
