# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_11_09_220130) do

  create_table "events", force: :cascade do |t|
  end

  create_table "instances", force: :cascade do |t|
  end

  create_table "instancings", force: :cascade do |t|
    t.string "instanceable_type"
    t.integer "instanceable_id"
    t.integer "instance_id"
    t.index ["instance_id"], name: "index_instancings_on_instance_id"
    t.index ["instanceable_type", "instanceable_id"], name: "index_instancings_on_instanceable_type_and_instanceable_id"
  end

end
