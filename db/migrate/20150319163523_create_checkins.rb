class CreateCheckins < ActiveRecord::Migration
  def change
    create_table :checkins do |t|
      t.string :user_name
      t.text :feedback

      t.timestamps null: false
    end
  end
end
