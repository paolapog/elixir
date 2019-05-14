defmodule SpaceAge do
  @type planet ::
          :mercury
          | :venus
          | :earth
          | :mars
          | :jupiter
          | :saturn
          | :uranus
          | :neptune

          @year_in_sec  31_557_600

  @doc """
  Return the number of years a person that has lived for 'seconds' seconds is
  aged on 'planet'.
  """
  @spec age_on(planet, pos_integer) :: float
  def age_on(planet, seconds) do
    seconds/orbital(planet)/@year_in_sec
  end


  defp orbital(:mercury), do: 0.2408467
  defp orbital(:venus), do: 0.61519726
  defp orbital(:earth), do: 1
  defp orbital(:mars), do: 1.8808158
  defp orbital(:jupiter), do: 11.862615
  defp orbital(:saturn), do: 29.447498
  defp orbital(:uranus), do: 84.016846
  defp orbital(:neptune), do: 164.79132
end
