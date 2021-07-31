# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_210_731_165_528) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'genres', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'genres_movies', force: :cascade do |t|
    t.bigint 'movie_id', null: false
    t.bigint 'genre_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['genre_id'], name: 'index_genres_movies_on_genre_id'
    t.index ['movie_id'], name: 'index_genres_movies_on_movie_id'
  end

  create_table 'movies', force: :cascade do |t|
    t.string 'title'
    t.text 'description'
    t.string 'trailer'
    t.date 'date'
    t.integer 'duration'
    t.integer 'sertification'
    t.integer 'country'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.string 'type'
  end

  create_table 'tags', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'tags_movies', force: :cascade do |t|
    t.bigint 'tag_id', null: false
    t.bigint 'movie_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['movie_id'], name: 'index_tags_movies_on_movie_id'
    t.index ['tag_id'], name: 'index_tags_movies_on_tag_id'
  end

  add_foreign_key 'genres_movies', 'genres'
  add_foreign_key 'genres_movies', 'movies'
  add_foreign_key 'tags_movies', 'movies'
  add_foreign_key 'tags_movies', 'tags'
end
