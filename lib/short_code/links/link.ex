defmodule ShortCode.Links.Link do
  use Ecto.Schema
  import Ecto.Changeset

  schema "links" do
    field :destination_url, :string
    field :short_code, :string
    field :vanity_name, :string

    timestamps()
  end

   defp generate_short_code(changeset) do
    short_code = :crypto.strong_rand_bytes(4) |> Base.encode64() |> binary_part(0, 6)
      put_change(changeset, :short_code, short_code)
  end

  @doc false
  def changeset(link, attrs) do
    link
    |> cast(attrs, [:destination_url, :vanity_name])
    |> validate_required([:destination_url])
    |> validate_format(:destination_url, ~r/^(http|https):\/\/[a-zA-Z0-9\-\.]+\.[a-zA-Z]{2,}\/?/)
    |> unique_constraint(:vanity_name)
    |> unique_constraint(:short_code)
    |> generate_short_code()
  end

 
end
