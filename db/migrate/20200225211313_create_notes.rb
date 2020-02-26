class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.string :name
      t.time :time
      t.text :body
      t.belongs_to :plan, null: false, foreign_key: true

      t.timestamps
    end
  end
end
