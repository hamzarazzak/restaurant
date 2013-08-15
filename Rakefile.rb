require 'bundler'
Bundler.require :test, :debugging

Cucumber::Rake::Task.new(:cucumber) do |t|
	t.cucumber_opts = "-r features"
end
desc "Run the build"
task :default => :cucumber

