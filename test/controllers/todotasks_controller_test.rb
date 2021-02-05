require "test_helper"

class TodotasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @todotask = todotasks(:one)
  end

  test "should get index" do
    get todotasks_url
    assert_response :success
  end

  test "should get new" do
    get new_todotask_url
    assert_response :success
  end

  test "should create todotask" do
    assert_difference('Todotask.count') do
      post todotasks_url, params: { todotask: { duedate: @todotask.duedate, task_name: @todotask.task_name } }
    end

    assert_redirected_to todotask_url(Todotask.last)
  end

  test "should show todotask" do
    get todotask_url(@todotask)
    assert_response :success
  end

  test "should get edit" do
    get edit_todotask_url(@todotask)
    assert_response :success
  end

  test "should update todotask" do
    patch todotask_url(@todotask), params: { todotask: { duedate: @todotask.duedate, task_name: @todotask.task_name } }
    assert_redirected_to todotask_url(@todotask)
  end

  test "should destroy todotask" do
    assert_difference('Todotask.count', -1) do
      delete todotask_url(@todotask)
    end

    assert_redirected_to todotasks_url
  end
end
