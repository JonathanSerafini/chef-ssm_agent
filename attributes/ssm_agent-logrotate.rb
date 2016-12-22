# Amazon SSM Agent logrotation
# @since 0.1.0
default['ssm_agent']['logrotate'].tap do |config|
  config['rotate'] = 7
  config['frequency'] = 'daily'
  config['postrotate'] = format(
    'service %s restart',
    node['ssm_agent']['service']['name']
  )
end
