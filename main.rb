# frozen_string_literal: true

# Create main app

require_relative 'app'

def main
  app = App.new
  app.run
end

main
