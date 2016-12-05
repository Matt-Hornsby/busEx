defmodule Onebusaway do
  def stops do
    response = HTTPoison.get! "http://api.pugetsound.onebusaway.org/api/where/arrivals-and-departures-for-stop/1_75403.json?key=TEST"
    parsed = Poison.Parser.parse!(response.body)
    parsed["data"]["references"]["stops"]
  end
end
