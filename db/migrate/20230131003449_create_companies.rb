class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      # t.integer "id"  we don't have to add this because the code already knows
      t.string "name" # table stands for string
      t.string "city"
      t.string "state"
      t.string "url"

      t.timestamps
    end
  end
end

# this create the initial table, and model one will take over it
