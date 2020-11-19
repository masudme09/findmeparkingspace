defmodule WhiteBreadContext do
  use WhiteBread.Context
  use Hound.Helpers

  feature_starting_state fn  ->
    Application.ensure_all_started(:hound)
    %{}
  end
  scenario_starting_state fn _state ->
    Hound.start_session
    %{}
  end
  scenario_finalize fn _status, _state ->
    Hound.end_session
  end

  given_ ~r/^the following users are registered in the system$/, fn state ->
    {:ok, state}
  end

  and_ ~r/^I open the registration page$/, fn state ->
    {:ok, state}
  end

  and_ ~r/^I enter registration information$/, fn state ->
    {:ok, state}
  end

  when_ ~r/^I submit registration request$/, fn state ->
    {:ok, state}
  end

  given_ ~r/^the following users provide login infromation in the system$/, fn state ->
    {:ok, state}
  end

  and_ ~r/^I open the login page$/, fn state ->
  {:ok, state}
  end

  and_ ~r/^I enter "(?<argument_one>[^"]+)" as email and "(?<argument_two>[^"]+)" as password$/,
  fn state, %{argument_one: _argument_one,argument_two: _argument_two} ->
    {:ok, state}
  end

  when_ ~r/^I submit login request$/, fn state ->
    {:ok, state}
  end

  then_ ~r/^I should see the "(?<argument_one>[^"]+)"$/,
  fn state, %{argument_one: _argument_one} ->
    {:ok, state}
  end

  given_ ~r/^the following users are logged in into the system$/, fn state ->
    {:ok, state}
  end

  and_ ~r/^I am logged in into the system$/, fn state ->
    {:ok, state}
  end

  when_ ~r/^I submit logout request$/, fn state ->
    {:ok, state}
  end

  then_ ~r/^I should see the login page$/, fn state ->
    {:ok, state}
  end

end
