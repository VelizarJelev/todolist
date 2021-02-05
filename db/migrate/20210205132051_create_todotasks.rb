class CreateTodotasks < ActiveRecord::Migration[6.1]
  def change
    create_table :todotasks do |t|
      t.string :task_name
      t.date :duedate

      t.timestamps
    end
  end
end
