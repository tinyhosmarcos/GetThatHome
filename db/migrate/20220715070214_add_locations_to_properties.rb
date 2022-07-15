class AddLocationsToProperties < ActiveRecord::Migration[7.0]
  def change
    add_column :properties, :latitud, :float, default: 0.0
    add_column :properties, :longitud, :float, default: 0.0
  end
end
