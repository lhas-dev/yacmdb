class CreateServerSoftwares < ActiveRecord::Migration[7.0]
  def change
    create_table :server_softwares do |t|
      t.belongs_to :server, null: false, foreign_key: true
      t.belongs_to :software, null: false, foreign_key: true

      t.timestamps
    end
  end
end
