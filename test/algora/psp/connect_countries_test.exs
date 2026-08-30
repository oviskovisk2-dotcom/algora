defmodule Algora.PSP.ConnectCountriesTest do
  use ExUnit.Case, async: true

  alias Algora.PSP.ConnectCountries

  test "Brazil is available for payout onboarding" do
    assert {"Brazil", "BR"} in ConnectCountries.list()
    assert "BR" in ConnectCountries.list_codes()
    assert ConnectCountries.from_code("BR") == "Brazil"
    assert ConnectCountries.account_type("BR") == :standard
  end
end
