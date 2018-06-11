require File.expand_path(File.dirname(__FILE__) + '/test_helper.rb')

class TestFakerJobLocale < Test::Unit::TestCase
  def setup
    Faker::Config.locale = 'en-AU'
    @tester = Faker::Job
  end

  def teardown
    Faker::Config.locale = nil
  end

  def test_locale_without_jobs_defaults_to_en
    assert @tester.position.match(/(\w+\.? ?)/)
  end
end
