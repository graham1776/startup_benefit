class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.text :name
      t.text :copy

      t.timestamps
    end
  end
end
