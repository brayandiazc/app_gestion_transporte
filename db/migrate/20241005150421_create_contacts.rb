class CreateContacts < ActiveRecord::Migration[7.2]
  def change
    create_table :contacts do |t|
      t.string :name
      t.text :description
      t.date :fecha
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
