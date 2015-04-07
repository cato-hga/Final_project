class AddRecipientRefToSpecialOccasions < ActiveRecord::Migration
  def change
    add_reference :special_occasions, :recipient, index: true
    add_foreign_key :special_occasions, :recipients
  end
end
