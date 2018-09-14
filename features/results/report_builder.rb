require 'report_builder'

time = Time.now.strftime('%d/%m/%Y %H:%M')

ReportBuilder.configure do |config|
  config.input_path = File.dirname(__FILE__) + '/results.json'
  config.report_path = File.dirname(__FILE__) + '/my_test_report'
  config.report_types = [:html]
  config.report_tabs = %w[Overview Features Scenarios Errors]
  config.report_title = 'My Test Results'
  config.compress_images = false
  config.color = 'indigo'
  config.additional_info = {'Project name' => 'Gliese API', :Platform => 'New', 'Report generated' => time}
end
 
ReportBuilder.build_report
