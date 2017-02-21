class AddColumnsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :address, :string
    add_column :users, :city, :string
    add_column :users, :zip_code, :string
    add_column :users, :phone_number, :string
    add_column :users, :cell_number, :string
    add_column :users, :company_name, :string
    add_column :users, :company_description, :string
    add_column :users, :company_logo, :string
    add_column :users, :company_pictures, :string
    add_column :users, :siret, :string
  end
end
