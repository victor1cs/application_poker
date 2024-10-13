class CreateTournaments < ActiveRecord::Migration[7.2]
  def change
    create_table :tournaments do |t|
      t.string :name
      t.decimal :buy_in
      t.decimal :award
      t.integer :position
      t.integer :quantity_players
      t.datetime :start_date
      t.datetime :end_date
      t.string :link
      t.boolean :online
      t.string :platform

      t.timestamps
    end
  end
end
