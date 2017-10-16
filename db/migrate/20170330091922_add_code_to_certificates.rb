class AddCodeToCertificates < ActiveRecord::Migration[5.0]
  def change
    add_column :certificates, :code, :string
  end
end
