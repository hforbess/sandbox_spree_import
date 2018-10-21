class CreateImportedFiles < ActiveRecord::Migration[5.0]
  def change
    create_table :imported_files do |t|
      t.string :file_name, :null=> false
      t.datetime :import_date, :null=> false

      t.timestamps
    end
  end
end
