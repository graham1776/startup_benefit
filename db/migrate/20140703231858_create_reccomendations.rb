class CreateReccomendations < ActiveRecord::Migration
  def change
    create_table :reccomendations do |t|
      t.references :benefit, index: true
      t.text :name
      t.text :copy
      t.string :url
      t.string :favicon_url

      t.timestamps
    end
  end
end
