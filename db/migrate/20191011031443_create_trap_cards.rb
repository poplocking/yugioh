class CreateTrapCards < ActiveRecord::Migration[6.0]
  def change
    create_table :trap_cards do |t|
      t.integer :trap_Id
      t.string :name
      t.string :description
      t.references :type, null: false, foreign_key: true
      t.references :attribute, null: false, foreign_key: true
      t.references :race, null: false, foreign_key: true

      t.timestamps
    end
  end
end
