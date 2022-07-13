class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.boolean :operation_type
      t.string :address
      t.integer :monthly_price
      t.integer :maintenance
      t.integer :property_type
      t.integer :bedrooms_count
      t.integer :bathrooms_count
      t.integer :area
      t.boolean :pets_allowed
      t.text :description
      t.boolean :active_published
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
