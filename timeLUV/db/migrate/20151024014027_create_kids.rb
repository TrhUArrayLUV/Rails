class CreateKids < ActiveRecord::Migration
  def change
    create_table :kids do |t|
      t.string :name
      t.belongs_to :teacher
      t.timestamps 
    end
  end
end
