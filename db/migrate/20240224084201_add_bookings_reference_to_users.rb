class AddBookingsReferenceToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :booking_id, :integer
  end
end
