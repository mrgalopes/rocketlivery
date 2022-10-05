# Rocketlivery

[![codecov](https://codecov.io/gh/mrgalopes/rocketlivery/branch/main/graph/badge.svg?token=E0INASZRIB)](https://codecov.io/gh/mrgalopes/rocketlivery)

Simple app to manage food orders via a JSON API. Can be accessed [here](https://worst-shimmering-springbok.gigalixirapp.com/).

Made using Elixir's Phoenix Framework.
Postal codes (from Brazil) are validated using an external API.
Also, creates a report of orders periodically to a file.

Made as part of a course on Elixir (Ignite by Rocketseat) to exercise concepts such as:

- Pattern matching
- Database management using Ecto (migrations, schemas and repos)
- Creating CRUD using Phoenix
- Separating business logic from controller logic
- Consuming external APIs and making tests for them simulating their responses
- Authentication with Guardian library using JWT tokens
- Using a GenServer to generate a report periodically

## Running

To start your Phoenix server:

- Install dependencies with `mix deps.get`
- Create and migrate your database with `mix ecto.setup`
- Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.
