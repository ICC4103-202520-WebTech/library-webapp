class AddLastNameToAuthors < ActiveRecord::Migration[8.0]
  def change
    change_table :authors do |t|
      t.string :last_name, null: false
    end
  end
end
