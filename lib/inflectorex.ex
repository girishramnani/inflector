defmodule Inflectorex do
  @moduledoc """
  Documentation for Inflectorex.
  """

  def pluralize(word) when is_binary(word) do
    Inflectorex.Regexps.pluralize(word)
  end

  def pluralize(_) do    
    {:error, "Can only pluralize binary strings"}
  end

  def singularize(word) when is_binary(word) do
    Inflectorex.Regexps.singularize(word)
  end 

  def singularize(_) do
    {:error, "Can only singularize binary strings"}
  end



end
