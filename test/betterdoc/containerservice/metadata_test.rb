require 'test_helper'
require 'betterdoc/webservice/metadata'

class MetadataTest < ActiveSupport::TestCase

  test "compute name - precedence environment" do

    Betterdoc::Webservice::Metadata.stubs(:compute_name_from_environment).returns('name_from_environment')
    Betterdoc::Webservice::Metadata.stubs(:compute_name_from_file).returns('name_from_file')
    Betterdoc::Webservice::Metadata.stubs(:compute_name_default).returns('name_default')

    assert_equal 'name_from_environment', Betterdoc::Webservice::Metadata.compute_name

  end

  test "compute name - precedence file" do

    Betterdoc::Webservice::Metadata.stubs(:compute_name_from_environment).returns(nil)
    Betterdoc::Webservice::Metadata.stubs(:compute_name_from_file).returns('name_from_file')
    Betterdoc::Webservice::Metadata.stubs(:compute_name_default).returns('name_default')

    assert_equal 'name_from_file', Betterdoc::Webservice::Metadata.compute_name

  end

  test "compute name - precedence default" do

    Betterdoc::Webservice::Metadata.stubs(:compute_name_from_environment).returns(nil)
    Betterdoc::Webservice::Metadata.stubs(:compute_name_from_file).returns(nil)
    Betterdoc::Webservice::Metadata.stubs(:compute_name_default).returns('name_default')

    assert_equal 'name_default', Betterdoc::Webservice::Metadata.compute_name

  end

  test "compute name - fallback" do

    Betterdoc::Webservice::Metadata.stubs(:compute_name_from_environment).returns(nil)
    Betterdoc::Webservice::Metadata.stubs(:compute_name_from_file).returns(nil)
    Betterdoc::Webservice::Metadata.stubs(:compute_name_default).returns(nil)

    assert_equal 'unknown', Betterdoc::Webservice::Metadata.compute_name

  end

  test "compute version - precedence environment" do

    Betterdoc::Webservice::Metadata.stubs(:compute_version_from_environment).returns('version_from_environment')
    Betterdoc::Webservice::Metadata.stubs(:compute_version_from_file).returns('version_from_file')
    Betterdoc::Webservice::Metadata.stubs(:compute_version_default).returns('version_default')

    assert_equal 'version_from_environment', Betterdoc::Webservice::Metadata.compute_version

  end

  test "compute version - precedence file" do

    Betterdoc::Webservice::Metadata.stubs(:compute_version_from_environment).returns(nil)
    Betterdoc::Webservice::Metadata.stubs(:compute_version_from_file).returns('version_from_file')
    Betterdoc::Webservice::Metadata.stubs(:compute_version_default).returns('version_default')

    assert_equal 'version_from_file', Betterdoc::Webservice::Metadata.compute_version

  end

  test "compute version - precedence default" do

    Betterdoc::Webservice::Metadata.stubs(:compute_version_from_environment).returns(nil)
    Betterdoc::Webservice::Metadata.stubs(:compute_version_from_file).returns(nil)
    Betterdoc::Webservice::Metadata.stubs(:compute_version_default).returns('version_default')

    assert_equal 'version_default', Betterdoc::Webservice::Metadata.compute_version

  end

  test "compute version - fallback" do

    Betterdoc::Webservice::Metadata.stubs(:compute_version_from_environment).returns(nil)
    Betterdoc::Webservice::Metadata.stubs(:compute_version_from_file).returns(nil)
    Betterdoc::Webservice::Metadata.stubs(:compute_version_default).returns(nil)

    assert_equal 'unknown', Betterdoc::Webservice::Metadata.compute_version

  end

end
