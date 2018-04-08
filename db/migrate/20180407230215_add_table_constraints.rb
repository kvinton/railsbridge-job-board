class AddTableConstraints < ActiveRecord::Migration[5.1]
  def change
    change_column :jobs, :title, :text, null: false
  end
end
