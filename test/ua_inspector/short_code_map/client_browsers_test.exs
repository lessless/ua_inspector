defmodule UAInspector.ShortCodeMap.ClientBrowsersTest do
  use ExUnit.Case, async: true

  alias UAInspector.ShortCodeMap.ClientBrowsers

  test "client browser" do
    assert "Puffin" == ClientBrowsers.to_long("PU")
    assert "PU" == ClientBrowsers.to_short("Puffin")
  end

  test "client browser not convertible" do
    browser = "--unknown--"

    assert browser == ClientBrowsers.to_long(browser)
    assert browser == ClientBrowsers.to_short(browser)
  end
end
