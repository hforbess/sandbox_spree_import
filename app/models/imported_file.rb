class ImportedFile < ApplicationRecord

  validates :file_name, :import_date, presence: true
 `
end
