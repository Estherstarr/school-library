# frozen_string_literal: true

require 'json'

# Create a class to stored the data
class StoredData
  def initialize(filename)
    @file_name = "data/#{filename}.json"
    write([]) unless File.file?(@file_name)
  end

  # Create a reading method to read the data
  def read
    data = File.read(@file_name)
    JSON.parse(data)
  end

  def write(data)
    File.write(@file_name, JSON.generate(data))
  end
end
