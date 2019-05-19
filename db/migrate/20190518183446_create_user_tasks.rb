class CreateUserTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :user_tasks do |t|
      t.text :description
      t.string :state
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
