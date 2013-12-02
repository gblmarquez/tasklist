class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :description
      t.string :status
      t.references :author, index: true
      t.references :category, index: true

      t.timestamps
    end
  end
end
