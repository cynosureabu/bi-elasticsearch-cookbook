# this is a test fixture used to test that the elasticsearch cookbook's
# resources, providers, and recipes can be used correctly from a wrapper


elasticsearch_user 'elasticsearch'

elasticsearch_install 'elasticsearch' do
  type :package
end

elasticsearch_configure 'elasticsearch' do
  configuration ({
    'cluster.name' => 'bi-es'
  })

  action :manage
end

elasticsearch_service 'elasticsearch' do
  service_actions [:enable, :start]
end

elasticsearch_plugin 'head' do
  url 'mobz/elasticsearch-head'
  notifies :restart, 'elasticsearch_service[elasticsearch]', :delayed
end

elasticsearch_plugin 'cloud-aws' do
  action :install
  notifies :restart, 'elasticsearch_service[elasticsearch]', :delayed
end


