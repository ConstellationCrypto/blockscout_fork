defmodule BlockScoutWeb.UserSocketV2 do
  @moduledoc """
    Module to distinct new and old UI websocket connections
  """
  use Phoenix.Socket

  channel("addresses:*", BlockScoutWeb.AddressChannel)
  channel("blocks:*", BlockScoutWeb.BlockChannel)
  channel("exchange_rate:*", BlockScoutWeb.ExchangeRateChannel)
  channel("optimism_deposits:*", BlockScoutWeb.OptimismDepositChannel)
  channel("rewards:*", BlockScoutWeb.RewardChannel)
  channel("transactions:*", BlockScoutWeb.TransactionChannel)
  channel("tokens:*", BlockScoutWeb.TokenChannel)
  channel("token_instances:*", BlockScoutWeb.TokenInstanceChannel)
  channel("zkevm_batches:*", BlockScoutWeb.PolygonZkevmConfirmedBatchChannel)
  channel("arbitrum_batches:*", BlockScoutWeb.ArbitrumBatchesChannel)

  def connect(_params, socket) do
    {:ok, socket}
  end

  def id(_socket), do: nil
end
