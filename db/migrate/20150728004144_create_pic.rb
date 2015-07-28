class CreatePic < ActiveRecord::Migration
  def change
    create_table :pics do |t|
      t.references :record
      t.boolean :public
      t.binary :pic, limit: 5.megabyte
      t.timestamps
    end
  end
end
