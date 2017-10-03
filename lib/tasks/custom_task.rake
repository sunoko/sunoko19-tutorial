namespace :custom_task do
  
  # rails custom_task:custom_hello
  desc "write comment"
  task :custom_hello do
    puts "Hello, Rails!!!"
  end

  # rails custom_task:custom_get_data
  desc "get db data"
  task :custom_get_data => :environment do
    puts User.first.name
  end

  # rails custom_task:custom_job
  desc "run custom job"
  task custom_job: :environment do
    CustomJobJob.perform_now
  end
end
