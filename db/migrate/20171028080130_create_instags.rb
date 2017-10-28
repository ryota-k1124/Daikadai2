class CreateInstags < ActiveRecord::Migration
  def change
    create_table :instags do |t|
      t.string :content
      t.string :image

      t.timestamps null: false
    end
  end
end
