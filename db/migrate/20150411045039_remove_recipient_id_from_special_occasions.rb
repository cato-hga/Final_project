class RemoveRecipientIdFromSpecialOccasions < ActiveRecord::Migration
  def change
    remove_column :special_occasions, :recipient_id, :string
  end
end
