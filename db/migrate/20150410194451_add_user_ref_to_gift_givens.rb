class AddUserRefToGiftGivens < ActiveRecord::Migration
  def change
    add_reference :gift_givens, :user, index: true
    add_foreign_key :gift_givens, :users
  end
end
