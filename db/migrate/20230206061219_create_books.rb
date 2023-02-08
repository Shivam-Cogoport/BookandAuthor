class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.belongs_to :author
      t.string :title
      t.date :publication_date

      t.timestamps
    end
  end
end
