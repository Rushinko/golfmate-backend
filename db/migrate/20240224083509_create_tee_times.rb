class CreateTeeTimes < ActiveRecord::Migration[7.1]
  def change
    create_table :tee_times do |t|

      t.timestamps
    end
  end
end
