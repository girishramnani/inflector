defmodule Inflectorex do

  use Application 


  def start(_type, _args) do
    :ets.new(:inflectorex_cache, [:set, :public, :named_table])
    {:ok, self()}
  end

  def stop(_state) do
    :ets.delete(:inflectorex_cache)
  end


  def pluralize(word) when is_binary(word) do
    case :ets.lookup(:inflectorex_cache,word) do
      [{ _ ,:plural,plural_word }] -> plural_word
      _ -> plural_word = Inflectorex.Regexps.pluralize(word)
            :ets.insert(:inflectorex_cache,{word,:plural,plural_word}) 
            plural_word
    end
  end

  def pluralize(_) do    
    {:error, "Can only pluralize binary strings"}
  end

  def singularize(word) when is_binary(word) do
     case :ets.lookup(:inflectorex_cache,word) do
      [{ _, :singular,singular_word }] -> singular_word
      
      _ -> singular_word = Inflectorex.Regexps.singularize(word)
            :ets.insert(:inflectorex_cache,{word,:singular,singular_word}) 
            singular_word
     
    end 
  end

  def singularize(_) do
    {:error, "Can only singularize binary strings"}
  end



end
