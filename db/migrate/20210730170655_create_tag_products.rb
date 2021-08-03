class CreateTagProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :tag_products do |t|
      t.belongs_to :tag, null: false, foreign_key: true
      t.belongs_to :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
