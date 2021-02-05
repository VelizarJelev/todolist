ActiveRecord::Schema.define(version: 2021_02_05_132051) do

  create_table "todotasks", force: :cascade do |t|
    t.string "task_name"
    t.date "duedate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
