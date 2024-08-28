class CreateTasks < ActiveRecord::Migration[7.2]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :details

      t.timestamps
    end

    add_index :tasks, :name, name: "custom_index_name"
  end
end
