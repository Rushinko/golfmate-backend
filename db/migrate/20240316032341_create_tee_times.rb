class CreateTeeTimes < ActiveRecord::Migration[7.1]
  def change
    create_table :tee_times do |t|
      t.references :course, null: false, foreign_key: true
      t.datetime :date_time
      t.integer :available_slots
      t.decimal :price
      t.timestamps
    end
  end
end
