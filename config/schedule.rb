set :output, "log/cron_log_by_whenever.log"

every 1.minutes do
  command "pwd"
  runner "CustomJobJob.perform_nowd"
  rake "custom_task:custom_job"
end

# bundle exec wheneverize .
# RAILS_ENV=development bundle exec whenever --update-crontab
# RAILS_ENV=development bundle exec whenever --clear-crontab
