
node['lamp']['linux']['package']['list'].each do |p|
  package p do
    action :install
  end
end