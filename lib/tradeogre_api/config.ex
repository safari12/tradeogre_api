defmodule Tradeogre.API.Config do
  @system_keys Application.get_env(:tradeogre_api, :system_keys)
  @base_url_system_key @system_keys[:base_url]
  @token_system_key @system_keys[:token]

  def base_url, do: System.get_env(@base_url_system_key)
  def token, do: System.get_env(@token_system_key)

  def auth_header, do: {"authorization", token()}
  def json_decode_content_types, do: ["text/html"]
end
