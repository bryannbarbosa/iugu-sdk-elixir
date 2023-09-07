defmodule IuguSdk do
  use HTTPoison.Base

  @base_url "https://api.iugu.com/v1"

  def get_sub_account_balance(account_id, live_token_auth) do
    url = "#{@base_url}/accounts/#{account_id}?api_token=#{live_token_auth}"
    response = get(url)

    case response do
      {:ok, %HTTPoison.Response{body: body}} ->
        Jason.decode!(body)

      {:error, reason} ->
        {:error, reason}
    end
  end

  def create_invoice do
    :invoice
  end
end
