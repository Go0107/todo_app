class CreateTododata < ActiveRecord::Migration[7.0]
  def change
    create_table :tododata do |t|
      t.text :title

      t.timestamps
    end
  end
end
