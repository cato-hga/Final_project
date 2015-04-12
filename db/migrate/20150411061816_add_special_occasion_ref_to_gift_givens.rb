class AddSpecialOccasionRefToGiftGivens < ActiveRecord::Migration
  def change
    add_reference :gift_givens, :special_occasion, index: true
    add_foreign_key :gift_givens, :special_occasions
  end
end
