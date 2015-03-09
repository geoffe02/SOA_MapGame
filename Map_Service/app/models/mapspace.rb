class Mapspace < ActiveRecord::Base
  require 'csv'
  self.primary_key = 'location_number'

  # CSV File Import function
  def self.import(file)
   CSV.foreach(file.path, headers: true) do |row|
    Mapspace.create! row.to_hash
    end
  end
end
