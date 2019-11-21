class CreateNewComments < ActiveRecord::Migration[6.0]
  def change
    create_table :new_comments do |t|

      t.timestamps
    end
  end
end
