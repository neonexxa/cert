class CreateCertificates < ActiveRecord::Migration[5.0]
  def change
    create_table :certificates do |t|
      t.string :title
      t.integer :provider_id
      t.text :description
      t.integer :qualification_id
      t.date :closing_date
      t.date :sitting_date
      t.integer :category_id

      t.timestamps
    end
  end
end
