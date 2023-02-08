class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string :name, :country
      t.date :DOB

      t.timestamps
    end
  end
end
