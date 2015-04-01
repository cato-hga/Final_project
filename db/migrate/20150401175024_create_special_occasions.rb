class CreateSpecialOccasions < ActiveRecord::Migration
  def change
    create_table :special_occasions do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
