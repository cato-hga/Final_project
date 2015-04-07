class AddRecipientToSpecialOccasions < ActiveRecord::Migration
  def change
    add_column :special_occasions, :recipient, :string
  end
end
