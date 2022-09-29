class CreateTracks < ActiveRecord::Migration[7.0]
  def change
    create_table :tracks do |t|
      t.string :title
      t.integer :default
      t.integer :artist_id

      t.timestamps
    end
  end
end
