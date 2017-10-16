class AddDetailToCertificate < ActiveRecord::Migration[5.0]
  def change
    add_column :certificates, :detail, :text
  end
end
