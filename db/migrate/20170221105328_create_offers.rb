class CreateOffers < ActiveRecord::Migration[5.0]
  def change
    create_table :offers do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :city
      t.string :price
      t.string :address
      t.string :zip_code
      t.string :video
      t.text :description
      t.integer :room_number
      t.integer :surface
      t.string :good_type
      t.integer :bedroom_number
      t.boolean :parking
      t.string :pictures
      t.boolean :ground
      t.boolean :garden
      t.boolean :lift
      t.boolean :floor
      t.boolean :swimming_pool
      t.boolean :cave
      t.boolean :balcony
      t.boolean :terrace

      t.timestamps
    end
    add_monetize :offers, :price, currency: { present: false }
  end
end
