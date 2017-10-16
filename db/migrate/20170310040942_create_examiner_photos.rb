class CreateExaminerPhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :examiner_photos do |t|
      t.integer :examiner_id
      t.string :path
      t.boolean :published

      t.timestamps
    end
  end
end
