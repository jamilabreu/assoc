defmodule Assoc.CommunityChannelTest do
  use Assoc.ModelCase

  alias Assoc.CommunityChannel

  @valid_attrs %{}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = CommunityChannel.changeset(%CommunityChannel{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = CommunityChannel.changeset(%CommunityChannel{}, @invalid_attrs)
    refute changeset.valid?
  end
end
