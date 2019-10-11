class CreateTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :types do |t|
      t.integer :type_ID
      t.string :type

      t.timestamps
    end
  end
end
