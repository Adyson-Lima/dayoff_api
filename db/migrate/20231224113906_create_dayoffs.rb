class CreateDayoffs < ActiveRecord::Migration[7.0]
  def change
    create_table :dayoffs do |t|
      t.string :day
      t.string :description

      t.timestamps
    end
  end
end
