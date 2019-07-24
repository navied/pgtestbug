class CreateAccountConcept < ActiveRecord::Migration[6.0]
  def change
    create_table "account_concepts", force: :cascade do |t|
      t.integer "account_id", null: false
      t.integer "concept_id", null: false
      t.float "score"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["account_id", "concept_id"], name: "index_account_concepts_on_account_id_and_concept_id"
      t.index ["concept_id", "account_id"], name: "index_account_concepts_on_concept_id_and_account_id"
    end
  end
end
