class CreateAssociations < ActiveRecord::Migration
  def change
    create_table :associations do |t|
      t.integer :program_id
      t.integer :keyword_id

      t.timestamps
    end

    add_index :associations, :program_id
    add_index :associations, :keyword_id
    add_index :associations, [:program_id, :keyword_id], unique: true
  end
end
