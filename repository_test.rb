require 'minitest/autorun'
require 'minitest/pride'
require './repository'
# require 'webmock/minitest'
require 'active_support'
require 'active_support/core_ext'

class RepositoryTest < Minitest::Test

  def test_class_exists
    assert Repository
  end

  def test_can_access_to_repository_by_user
      repo_list = Repository.new("amax3002").data
      assert_equal "amax3002", repo_list.first["owner"]["login"]
      assert_equal "Ruby", repo_list.first["language"]
      assert_equal "2016-10-18T21:03:59Z", repo_list.first["updated_at"]
      assert_equal nil, repo_list.first["description"]
  end

  def test_can_access_to_repository_by_user
      user_pull = Repository.new("amax3002").user_info
      assert_equal "https://avatars.githubusercontent.com/u/13155682?v=3", user_pull["avatar_url"]
  end

end
