class AddUserRefToSpecialOccasions < ActiveRecord::Migration
  def change
    add_reference :special_occasions, :user, index: true
    add_foreign_key :special_occasions, :users
  end
end
