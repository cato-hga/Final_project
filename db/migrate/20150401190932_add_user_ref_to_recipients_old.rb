class AddUserRefToRecipients < ActiveRecord::Migration
  def change
    add_reference :recipients, :user, index: true
    add_foreign_key :recipients, :users
  end
end
