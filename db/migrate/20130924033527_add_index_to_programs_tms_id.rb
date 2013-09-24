class AddIndexToProgramsTmsId < ActiveRecord::Migration
  def change
  	add_index :programs, :tmsId, unique: true
  end
end
