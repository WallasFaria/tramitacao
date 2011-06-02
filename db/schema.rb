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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110527004354) do

  create_table "doc_tramitacaos", :force => true do |t|
    t.integer  "setor_destino_id"
    t.integer  "pessoa_destino_id"
    t.date     "data_hora"
    t.integer  "documento_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "documentos", :force => true do |t|
    t.string   "tipo"
    t.string   "assunto"
    t.string   "numero_de_processo"
    t.integer  "setor_origem_id"
    t.integer  "funcionario_origem_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "funcionarios", :force => true do |t|
    t.string   "nome"
    t.string   "matricula"
    t.integer  "setor_id"
    t.integer  "usuario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "setors", :force => true do |t|
    t.string   "nome"
    t.string   "sigla"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "password_salt",                       :default => "", :null => false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "usuarios", ["email"], :name => "index_usuarios_on_email", :unique => true
  add_index "usuarios", ["reset_password_token"], :name => "index_usuarios_on_reset_password_token", :unique => true

end
