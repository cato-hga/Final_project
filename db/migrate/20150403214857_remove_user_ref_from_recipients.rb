class RemoveUserRefFromRecipients < ActiveRecord::Migration
  def change
    remove_reference :recipients, :user, index: true
  end
end
