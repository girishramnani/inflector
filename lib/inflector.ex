defmodule Inflector do
  @moduledoc """
  Documentation for Inflector.
  """

  def pluralize(word) when is_binary(word) do
    Inflector.Regexps.pluralize(word)
  end

  def pluralize(_) do    
    {:error, "Can only pluralize binary strings"}
  end

  def singularize(word) when is_binary(word) do
    Inflector.Regexps.singularize(word)
  end 

  def singularize(_) do
    {:error, "Can only singularize binary strings"}
  end



end
