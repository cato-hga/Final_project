class CreateGiftGivens < ActiveRecord::Migration
  def change
    create_table :gift_givens do |t|
      t.string :gift_name

      t.timestamps null: false
    end
  end
end
