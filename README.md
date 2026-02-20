# Devcon

Example use of [`.devcontainer`](.devcontainer/) with GitHub Codespaces for Phoenix development. 

This example creates a development container based on [`hexpm/elixir`](https://hub.docker.com/r/hexpm/elixir) with the current versions.

The phoenix app was generated inside a Codespace, with only `.devcontainer/*` files as a starting point. Once generated, the dev and test configs were updated to set the database host to `postgres`. The compose yaml runs a `postgres:18-alpine` container with that name.

## Getting Started

Follow the [Creating a Codespace](https://docs.github.com/en/codespaces/developing-in-a-codespace/creating-a-codespace-for-a-repository)
documentation, giving the container some time to build. Once the Codespace is ready, create a new terminal and run:

1. `mix setup`
2. `mix test`
3. `mix phx.server`

Codespaces should prompt you with a link to the forwarded port. Following it, you should see the standard Phoenix start page and the request logged in the terminal.

## Extensions

Default extensions are in `devcontainer.json`:

* ms-vscode-remote.remote-containers
* expertlsp.expert
* bradlc.vscode-tailwindcss
* anthropic.claude-code

## Oban Pro

The `Containerfile` adds the Oban Pro hex repo; however, this repo has an empty auth key until you provide an environment variable and rebuild the container. For Codespaces, set a [repository secret](https://docs.github.com/en/codespaces/managing-codespaces-for-your-organization/managing-development-environment-secrets-for-your-repository-or-organization) called `OBAN_LICENSE_KEY` and rebuild the container.

## Tidewave

[Tidewave MCP](https://github.com/tidewave-ai/tidewave_phoenix) is included and configured. You can connect Claude Code by following their [directions](https://hexdocs.pm/tidewave/mcp_claude_code.html).

The `Containerfile` also includes [Tidewave CLI](https://hexdocs.pm/tidewave/installation.html#cli). Example config in `config/dev.exs`. However, with valid credentials I could not get this connect. I attempted both localhost (http vs https error) and forwarded (github.dev redirect) URLs. PRs welcome if you get this working.

## See Also

* [Development Containers](https://containers.dev/) 
* [Codespaces](https://docs.github.com/en/codespaces)
* [Elixir](https://elixir-lang.org)
* [Phoenix](https://phoenixframework.org)
