defmodule TestAppWeb.Live.UserLive do
  use Backpex.LiveResource,
    layout: {TestAppWeb.Layouts, :admin},
    schema: TestApp.Accounts.User,
    repo: TestApp.Repo,
    create_changeset: &TestApp.Accounts.User.changeset/2,
    update_changeset: &TestApp.Accounts.User.update_changeset/2,
    pubsub: TestApp.PubSub,
    topic: "users",
    event_prefix: "user_",
    fluid?: true

  @impl Backpex.LiveResource
  def singular_name, do: "User"

  @impl Backpex.LiveResource
  def plural_name, do: "Accounts"

  @impl Backpex.LiveResource
  def fields do
    [
      id: %{
        module: Backpex.Fields.Text,
        label: "User ID"
      },
      first_name: %{
        module: Backpex.Fields.Text,
        label: "First name"
      },
      last_name: %{
        module: Backpex.Fields.Text,
        label: "Last name"
      }
    ]
  end

  @impl Backpex.LiveResource
  def resource_actions() do
    []
  end
end
