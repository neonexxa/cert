class AddPriceToCertificate < ActiveRecord::Migration[5.0]
  def change
    add_column :certificates, :price, :integer
  end
end
