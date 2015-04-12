class RemoveSpecialOccasionIdFromGiftGivens < ActiveRecord::Migration
  def change
    remove_column :gift_givens, :special_occasion_id, :string
  end
end
