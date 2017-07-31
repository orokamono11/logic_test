class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :create_title, null: false
      t.text :content, null: false

      t.timestamps
    end
  end
end
