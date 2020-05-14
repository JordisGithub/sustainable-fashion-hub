class Brand < ApplicationRecord
  require 'csv'
  require 'activerecord-import/base'
  require 'activerecord-import/active_record/adapters/postgresql_adapter'

def self.my_import(file)
  users = []
  CSV.foreach(file.path, headers: true) do |row|
    brands << Brand.new(row.to_hash)
  end
Brand.import brands, recursive: true

  has_many :items, dependant: :destroy
end

end

