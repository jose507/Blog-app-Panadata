class AddUsernamesComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :nombre, :string
  end
end
