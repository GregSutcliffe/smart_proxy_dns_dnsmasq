require 'test_helper'
require 'smart_proxy_dns_dnsmasq/dns_dnsmasq_configuration'
require 'smart_proxy_dns_dnsmasq/dns_dnsmasq_plugin'

class DnsDnsmasqDefaultSettingsTest < Test::Unit::TestCase
  def test_default_settings
    Proxy::Dns::Dnsmasq::Plugin.load_test_settings({})
    assert_equal "default_value", Proxy::Dns::Dnsmasq::Plugin.settings.required_setting
    assert_equal "/must/exist", Proxy::Dns::Dnsmasq::Plugin.settings.required_path
  end
end
