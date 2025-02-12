class CreateCourses < ActiveRecord::Migration[8.0]
  def change
    create_table :courses do |t|
      t.references :user, null: false, foreign_key: true
      t.string :code
      t.date :starts_at
      t.integer :current_class
      t.integer :previous_class

      t.timestamps
    end
  end
end
