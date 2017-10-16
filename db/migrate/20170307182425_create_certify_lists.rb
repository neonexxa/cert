class CreateCertifyLists < ActiveRecord::Migration[5.0]
  def change
    create_table :certify_lists do |t|
      t.integer :user_id
      t.integer :certificate_id
      t.date :obtained
      t.date :expires_by
      t.boolean :published

      t.timestamps
    end
  end
end
