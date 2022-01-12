class CreateSoftwares < ActiveRecord::Migration[7.0]
  def change
    create_table :softwares do |t|
      t.string :category
      t.datetime :expires_at
      t.string :name

      t.timestamps
    end
  end
end
