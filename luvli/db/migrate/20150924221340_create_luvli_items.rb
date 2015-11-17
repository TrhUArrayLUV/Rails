class CreateLuvliItems < ActiveRecord::Migration
  def change
    create_table :luvli_items do |t|
      t.references :luv_list, index: true, foreign_key: true
      t.string :content

      t.timestamps null: false
    end
  end
end
