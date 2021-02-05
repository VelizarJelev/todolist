require "application_system_test_case"

class TodotasksTest < ApplicationSystemTestCase
  setup do
    @todotask = todotasks(:one)
  end

  test "visiting the index" do
    visit todotasks_url
    assert_selector "h1", text: "Todotasks"
  end

  test "creating a Todotask" do
    visit todotasks_url
    click_on "New Todotask"

    fill_in "Duedate", with: @todotask.duedate
    fill_in "Task name", with: @todotask.task_name
    click_on "Create Todotask"

    assert_text "Todotask was successfully created"
    click_on "Back"
  end

  test "updating a Todotask" do
    visit todotasks_url
    click_on "Edit", match: :first

    fill_in "Duedate", with: @todotask.duedate
    fill_in "Task name", with: @todotask.task_name
    click_on "Update Todotask"

    assert_text "Todotask was successfully updated"
    click_on "Back"
  end

  test "destroying a Todotask" do
    visit todotasks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Todotask was successfully destroyed"
  end
end
