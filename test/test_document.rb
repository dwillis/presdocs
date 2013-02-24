require 'rubygems'
require 'presdocs'
include Presdocs
require 'minitest/autorun'

class TestDocument < MiniTest::Unit::TestCase
  
  def setup
    @latest = Document.latest
    @categories = Category.all
    @locations = Document.with_locations
    @doc = Document.detail('DCPD-201300104')
  end

  def test_that_there_are_five_latest_docs
    assert_equal 5, @latest.size
  end
  
  def test_that_latest_docs_dont_have_coords
    assert_nil @latest.first.lat
  end
  
  def test_that_categories_have_a_positive_count
    assert_operator @categories.count, :>=, 0
  end
  
  def test_that_location_docs_have_lat_and_lng
    assert @locations.last.lat
    assert @locations.first.lng
  end
  
  def test_that_document_detail_has_an_fdsys_url
    assert_equal "http://www.gpo.gov/fdsys/pkg/DCPD-201300104/html/DCPD-201300104.htm", @doc.fdsys_url
  end

end