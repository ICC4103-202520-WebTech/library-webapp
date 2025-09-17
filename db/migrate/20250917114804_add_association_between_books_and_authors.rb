class AddAssociationBetweenBooksAndAuthors < ActiveRecord::Migration[8.0]
  def change
    change_table :books do |t|
      t.references :author, null: false, foreign_key: true
    end
  end
end
