class CreateYoutubes < ActiveRecord::Migration[5.1]
  def change
    create_table :youtubes do |t|
      t.string :title

      t.timestamps
    end
  end
end
