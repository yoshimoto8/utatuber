class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :video_id, null: false
      t.string :title, null: false
      t.string :channel_title
      t.string :video_image
      t.string :video_url, null: false
      t.text :video_description
      t.date :published_at, null: false
      t.integer :play_count
      t.timestamps
    end
  end
end
