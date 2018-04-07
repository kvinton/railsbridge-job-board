class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.text :title, null: false
      t.text :description, null: false
      t.timestamps
    end
  end
end
