# This calls the main test_helper in Foreman-core
require 'test_helper'

# Add plugin to FactoryBot's paths
FactoryBot.definition_file_paths << File.join(File.dirname(__FILE__), 'factories')
FactoryBot.definition_file_paths << "#{ForemanMonitoring::Engine.root}/test/factories" if ForemanDlm.with_monitoring?
FactoryBot.reload
