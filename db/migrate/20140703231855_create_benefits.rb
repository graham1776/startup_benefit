class CreateBenefits < ActiveRecord::Migration
  def change
    create_table :benefits do |t|
      t.text :name
      t.references :category, index: true
      t.text :copy

      t.timestamps
    end
  end
end
