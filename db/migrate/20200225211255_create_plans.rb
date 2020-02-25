class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.date :date
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
