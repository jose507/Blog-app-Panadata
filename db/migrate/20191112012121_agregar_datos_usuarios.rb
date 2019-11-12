class AgregarDatosUsuarios < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :nombre, :string
    add_column :users, :fecha_nacimiento, :datetime
    add_column :users, :cerveza_fav, :string 
  end
end
