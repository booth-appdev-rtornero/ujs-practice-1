class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.text :content, null: false
      t.references :user, null: false, foreign_key: true
      t.string :status, default: "not_yet_started", null: false

      t.timestamps
    end
  end
end
