# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20130816180244) do

  create_table "conceptos", :force => true do |t|
    t.integer  "factura_id"
    t.integer  "cantidad"
    t.string   "producto"
    t.string   "unidad"
    t.integer  "precio_unitario"
    t.integer  "importe"
    t.integer  "impuesto"
    t.integer  "total"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "dashboards", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "empresas", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "nombreFactura"
    t.string   "rfc"
  end

  create_table "facturas", :force => true do |t|
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.string   "serie"
    t.string   "folio"
    t.string   "formaDePago"
    t.string   "metodoDePago"
    t.string   "numCtaPago"
    t.string   "lugarExpedicion"
    t.integer  "anoAprobacion"
    t.integer  "noCertificado"
    t.string   "nombre_emisor"
    t.string   "rfc_em"
    t.string   "nombre_receptor"
    t.string   "rfc_re"
    t.integer  "total"
    t.integer  "subTotal"
    t.integer  "usuario_id"
    t.datetime "fechaExpedicion"
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
    t.string   "archivo_file_name"
    t.string   "archivo_content_type"
    t.integer  "archivo_file_size"
    t.datetime "archivo_updated_at"
  end

  add_index "facturas", ["usuario_id"], :name => "index_facturas_on_user_id"

  create_table "usuarios", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
    t.integer  "empresa_id"
    t.string   "role"
    t.string   "rfc"
  end

  add_index "usuarios", ["email"], :name => "index_users_on_email", :unique => true
  add_index "usuarios", ["empresa_id"], :name => "index_users_on_company_id"
  add_index "usuarios", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
