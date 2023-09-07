defmodule IuguSdkTest do
  use ExUnit.Case
  doctest IuguSdk

  test "get invoice atom" do
    assert IuguSdk.create_invoice() == :invoice
  end
end
