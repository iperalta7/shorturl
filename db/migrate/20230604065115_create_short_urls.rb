class CreateShortUrls < ActiveRecord::Migration[7.0]
  def change
    create_table :short_urls do |t|
      t.string :original_url
      t.string :short_url

      t.timestamps
    end
  end
end
