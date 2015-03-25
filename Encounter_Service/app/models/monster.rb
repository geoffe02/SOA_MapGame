class Monster < ActiveRecord::Base
  require 'csv'
  self.primary_key = 'location'

  # CSV File Import Function
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
     Monster.create! row.to_hash
    end
  end

end
