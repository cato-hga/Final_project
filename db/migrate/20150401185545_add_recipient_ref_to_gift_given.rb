class AddRecipientRefToGiftGiven < ActiveRecord::Migration
  def change
    add_reference :gift_givens, :recipient, index: true
    add_foreign_key :gift_givens, :recipients
  end
end
