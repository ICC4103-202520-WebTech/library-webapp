class CreateBooksTable < ActiveRecord::Migration[8.0]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.date :publication_date, null: false

      t.timestamps
    end
  end
end
