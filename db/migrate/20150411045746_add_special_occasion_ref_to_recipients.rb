class AddSpecialOccasionRefToRecipients < ActiveRecord::Migration
  def change
    add_reference :recipients, :special_occasion, index: true
    add_foreign_key :recipients, :special_occasions
  end
end
