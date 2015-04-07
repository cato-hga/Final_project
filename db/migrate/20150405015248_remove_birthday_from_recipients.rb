class RemoveBirthdayFromRecipients < ActiveRecord::Migration
  def change
    remove_column :recipients, :birthday, :string
  end
end
