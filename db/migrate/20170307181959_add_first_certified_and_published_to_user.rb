class AddFirstCertifiedAndPublishedToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_certified, :date
    add_column :users, :published, :boolean
  end
end
