class AddImageAndPublishedToCertificate < ActiveRecord::Migration[5.0]
  def change
    add_column :certificates, :image, :string
    add_column :certificates, :published, :boolean
  end
end
