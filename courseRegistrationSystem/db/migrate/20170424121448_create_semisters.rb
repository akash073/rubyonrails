class CreateSemisters < ActiveRecord::Migration[5.0]
  def change
    create_table :semisters do |t|

      t.string :name
      t.boolean  "is_active",              default: false
      t.timestamps
    end
  end
end
