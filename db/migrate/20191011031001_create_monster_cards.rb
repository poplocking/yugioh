# frozen_string_literal: true

class CreateMonsterCards < ActiveRecord::Migration[6.0]
  def change
    create_table :monster_cards do |t|
      t.integer :monster_ID
      t.string :name
      t.string :description
      t.float :atk
      t.float :def
      t.integer :level
      t.integer :scale
      t.integer :linkval
      t.references :race, null: false, foreign_key: true
      t.references :attribute, null: false, foreign_key: true
      t.references :type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
