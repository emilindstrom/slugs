defmodule Translations do
  def get(char) do
    case [char] do
      'ä' -> 'a'
      'å' -> 'a'
      'à' -> 'a'
      'ã' -> 'a'
      'æ' -> 'ae'
      'è' -> 'e'
      'é' -> 'e'
      'ö' -> 'o'
      'ø' -> 'o'
      'ù' -> 'u'
      'û' -> 'u'
      'ü' -> 'u'
      default -> char
    end
  end
end
