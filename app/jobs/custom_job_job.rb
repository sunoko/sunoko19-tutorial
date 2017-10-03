class CustomJobJob < ApplicationJob
  queue_as :default

  def perform(*args)
    puts "Hello, Custom Job!!!"
  end
end
