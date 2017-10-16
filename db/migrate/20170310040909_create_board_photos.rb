class CreateBoardPhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :board_photos do |t|
      t.integer :board_id
      t.string :path
      t.boolean :published

      t.timestamps
    end
  end
end
