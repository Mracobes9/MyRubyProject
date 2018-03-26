class AddResetToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :reset_digest, :stiring
    add_column :users, :reset_send_at, :datetime
  end
end
