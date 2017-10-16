class CreateExaminers < ActiveRecord::Migration[5.0]
  def change
    create_table :examiners do |t|
      t.string :name
      t.string :title
      t.text :description
      t.boolean :published

      t.timestamps
    end
  end
end
