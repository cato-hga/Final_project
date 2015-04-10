class AddGiftGivenPicToGiftGivens < ActiveRecord::Migration
  def change
    add_column :gift_givens, :gift_given_pic, :string
  end
end
