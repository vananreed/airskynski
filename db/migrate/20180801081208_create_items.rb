class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :price
      t.string :name
      t.text :description
      t.string :category
      t.string :photo
      t.string :address
      t.boolean :published, default: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
