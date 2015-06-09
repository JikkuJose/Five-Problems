require 'rake/testtask'

Rake::TestTask.new("test") do |task|
  task.libs << %w(test)
  task.test_files = FileList["*/test_*"]
end

task :default => "test"
