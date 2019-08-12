require 'test_helper'
require 'openssl'
require 'betterdoc/webservice/controllers/concerns/http_response_metadata_concern'
require 'betterdoc/webservice/metadata'

class HttpResponseMetadataConcernTest < ActiveSupport::TestCase

  test "add http response headers" do

    Betterdoc::Webservice::Metadata.stubs(:compute_name).returns('s-name')
    Betterdoc::Webservice::Metadata.stubs(:compute_version).returns('s-version')

    response = Object.new
    response.expects(:add_header).with('X-Parc-Service-Metadata', 's-name s-version')

    concern = Object.new
    concern.extend(Betterdoc::Webservice::Controllers::Concerns::HttpResponseMetadataConcern)
    concern.stubs(:response).returns(response)

    concern.add_http_response_headers

  end

end
