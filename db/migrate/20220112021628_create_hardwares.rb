class CreateHardwares < ActiveRecord::Migration[7.0]
  def change
    create_table :hardwares do |t|
      t.belongs_to :server, null: false, foreign_key: true
      t.string :category
      t.string :value

      t.timestamps
    end
  end
end
