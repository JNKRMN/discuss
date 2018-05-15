#!/bin/bash
mix do hex.organization auth weedmaps --key $HEX_WEEDMAPS_ORGANIZATION_KEY, deps.get, ecto.create, ecto.migrate, phx.server
