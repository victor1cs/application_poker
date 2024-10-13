class AddUserToTournaments < ActiveRecord::Migration[7.2]
  def change
    add_reference :tournaments, :user, null: false, foreign_key: true
  end
end
