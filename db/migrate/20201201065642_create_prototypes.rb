class CreatePrototypes < ActiveRecord::Migration[6.0]
  def change
    create_table :prototypes do |t|
      t.string :title,    null: true
      t.text :catch_copy, null: true
      t.text :concept,    null: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
