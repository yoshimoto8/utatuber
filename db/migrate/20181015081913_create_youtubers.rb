class CreateYoutubers < ActiveRecord::Migration[5.2]
  def change
    create_table :youtubers do |t|
      t.string :name
      t.string :channel_id
      t.timestamps
    end
  end
end
