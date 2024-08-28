defmodule ShortCode.LinksFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `ShortCode.Links` context.
  """

  @doc """
  Generate a link.
  """
  def link_fixture(attrs \\ %{}) do
    {:ok, link} =
      attrs
      |> Enum.into(%{

      })
      |> ShortCode.Links.create_link()

    link
  end
end
