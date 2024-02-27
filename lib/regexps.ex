defmodule Inflectorex.Regexps do
  @singular_uninflected Application.get_env(:inflectorex, :singular_uniflected, []) ++
                          [
                            ~r/(?i)(^(?:.*[nrlm]ese))$/,
                            ~r/(?i)(^(?:.*deer))$/,
                            ~r/(?i)(^(?:.*fish))$/,
                            ~r/(?i)(^(?:.*measles))$/,
                            ~r/(?i)(^(?:.*ois))$/,
                            ~r/(?i)(^(?:.*pox))$/,
                            ~r/(?i)(^(?:.*sheep))$/,
                            ~r/(?i)(^(?:.*ss))$/
                          ]

  @plural_uninflected Application.get_env(:inflectorex, :plural_uniflected, []) ++
                        [
                          ~r/(?i)(^(?:.*[nrlm]ese))$/,
                          ~r/(?i)(^(?:.*deer))$/,
                          ~r/(?i)(^(?:.*fish))$/,
                          ~r/(?i)(^(?:.*measles))$/,
                          ~r/(?i)(^(?:.*ois))$/,
                          ~r/(?i)(^(?:.*pox))$/,
                          ~r/(?i)(^(?:.*sheep))$/,
                          ~r/(?i)(^(?:people))$/
                        ]

  @uninflected ~r/((?i)(^(?:Amoyese))$
                    |(?i)(^(?:bison))$
                    |(?i)(^(?:Borghese))$
                    |(?i)(^(?:bream))$
                    |(?i)(^(?:breeches))$
                    |(?i)(^(?:britches))$
                    |(?i)(^(?:buffalo))$
                    |(?i)(^(?:cantus))$
                    |(?i)(^(?:carp))$
                    |(?i)(^(?:chassis))$
                    |(?i)(^(?:clippers))$
                    |(?i)(^(?:cod))$
                    |(?i)(^(?:coitus))$
                    |(?i)(^(?:Congoese))$
                    |(?i)(^(?:contretemps))$
                    |(?i)(^(?:corps))$
                    |(?i)(^(?:debris))$
                    |(?i)(^(?:diabetes))$
                    |(?i)(^(?:djinn))$
                    |(?i)(^(?:eland))$
                    |(?i)(^(?:elk))$
                    |(?i)(^(?:equipment))$
                    |(?i)(^(?:Faroese))$
                    |(?i)(^(?:flounder))$
                    |(?i)(^(?:Foochowese))$
                    |(?i)(^(?:gallows))$
                    |(?i)(^(?:Genevese))$
                    |(?i)(^(?:Genoese))$
                    |(?i)(^(?:Gilbertese))$
                    |(?i)(^(?:graffiti))$
                    |(?i)(^(?:headquarters))$
                    |(?i)(^(?:herpes))$
                    |(?i)(^(?:hijinks))$
                    |(?i)(^(?:Hottentotese))$
                    |(?i)(^(?:information))$
                    |(?i)(^(?:innings))$
                    |(?i)(^(?:jackanapes))$
                    |(?i)(^(?:Kiplingese))$
                    |(?i)(^(?:Kongoese))$
                    |(?i)(^(?:Lucchese))$
                    |(?i)(^(?:mackerel))$
                    |(?i)(^(?:Maltese))$
                    |(?i)(^(?:.*?media))$
                    |(?i)(^(?:mews))$
                    |(?i)(^(?:moose))$
                    |(?i)(^(?:mumps))$
                    |(?i)(^(?:Nankingese))$
                    |(?i)(^(?:news))$
                    |(?i)(^(?:nexus))$
                    |(?i)(^(?:Niasese))$
                    |(?i)(^(?:Pekingese))$
                    |(?i)(^(?:Piedmontese))$
                    |(?i)(^(?:pincers))$
                    |(?i)(^(?:Pistoiese))$
                    |(?i)(^(?:pliers))$
                    |(?i)(^(?:Portuguese))$
                    |(?i)(^(?:proceedings))$
                    |(?i)(^(?:rabies))$
                    |(?i)(^(?:rice))$
                    |(?i)(^(?:rhinoceros))$
                    |(?i)(^(?:salmon))$
                    |(?i)(^(?:Sarawakese))$
                    |(?i)(^(?:scissors))$
                    |(?i)(^(?:sea[- ]bass))$
                    |(?i)(^(?:series))$
                    |(?i)(^(?:Shavese))$
                    |(?i)(^(?:shears))$
                    |(?i)(^(?:siemens))$
                    |(?i)(^(?:species))$
                    |(?i)(^(?:swine))$
                    |(?i)(^(?:testes))$
                    |(?i)(^(?:trousers))$
                    |(?i)(^(?:trout))$
                    |(?i)(^(?:tuna))$
                    |(?i)(^(?:Vermontese))$
                    |(?i)(^(?:Wenchowese))$
                    |(?i)(^(?:whiting))$
                    |(?i)(^(?:wildebeest))$
                    |(?i)(^(?:Yengeese))$)/mix

  @plural_regexps Application.get_env(:inflectorex, :plural, []) ++
                    [
                      {~r/(?i)(.*)\b((?:atlas))$/, "atlases"},
                      {~r/(?i)(.*)\b((?:beef))$/, "beefs"},
                      {~r/(?i)(.*)\b((?:brother))$/, "brothers"},
                      {~r/(?i)(.*)\b((?:cafe))$/, "cafes"},
                      {~r/(?i)(.*)\b((?:child))$/, "children"},
                      {~r/(?i)(.*)\b((?:cookie))$/, "cookies"},
                      {~r/(?i)(.*)\b((?:corpus))$/, "corpuses"},
                      {~r/(?i)(.*)\b((?:cow))$/, "cows"},
                      {~r/(?i)(.*)\b((?:ganglion))$/, "ganglions"},
                      {~r/(?i)(.*)\b((?:genie))$/, "genies"},
                      {~r/(?i)(.*)\b((?:genus))$/, "genera"},
                      {~r/(?i)(.*)\b((?:graffito))$/, "graffiti"},
                      {~r/(?i)(.*)\b((?:hoof))$/, "hoofs"},
                      {~r/(?i)(.*)\b((?:loaf))$/, "loaves"},
                      {~r/(?i)(.*)\b((?:man))$/, "men"},
                      {~r/(?i)(.*)\b((?:money))$/, "monies"},
                      {~r/(?i)(.*)\b((?:mongoose))$/, "mongooses"},
                      {~r/(?i)(.*)\b((?:move))$/, "moves"},
                      {~r/(?i)(.*)\b((?:mythos))$/, "mythoi"},
                      {~r/(?i)(.*)\b((?:niche))$/, "niches"},
                      {~r/(?i)(.*)\b((?:numen))$/, "numina"},
                      {~r/(?i)(.*)\b((?:occiput))$/, "occiputs"},
                      {~r/(?i)(.*)\b((?:octopus))$/, "octopuses"},
                      {~r/(?i)(.*)\b((?:opus))$/, "opuses"},
                      {~r/(?i)(.*)\b((?:ox))$/, "oxen"},
                      {~r/(?i)(.*)\b((?:penis))$/, "penises"},
                      {~r/(?i)(.*)\b((?:person))$/, "people"},
                      {~r/(?i)(.*)\b((?:sex))$/, "sexes"},
                      {~r/(?i)(.*)\b((?:soliloquy))$/, "soliloquies"},
                      {~r/(?i)(.*)\b((?:testis))$/, "testes"},
                      {~r/(?i)(.*)\b((?:trilby))$/, "trilbys"},
                      {~r/(?i)(.*)\b((?:turf))$/, "turfs"},
                      {~r/(?i)(.*)\b((?:potato))$/, "potatoes"},
                      {~r/(?i)(.*)\b((?:hero))$/, "heroes"},
                      {~r/(?i)(.*)\b((?:tooth))$/, "teeth"},
                      {~r/(?i)(.*)\b((?:goose))$/, "geese"},
                      {~r/(?i)(.*)\b((?:foot))$/, "feet"},
                      {~r/(?i)(s)tatus$/, "\\g{1}\\g{2}tatuses"},
                      {~r/(?i)(quiz)$/, "\\g{1}zes"},
                      {~r/(?i)^(ox)$/, "\\g{1}\\g{2}en"},
                      {~r/(?i)([m|l])ouse$/, "\\g{1}ice"},
                      {~r/(?i)(matr|vert|ind)(ix|ex)$/, "\\g{1}ices"},
                      {~r/(?i)(x|ch|ss|sh)$/, "\\g{1}es"},
                      {~r/(?i)([^aeiouy]|qu)y$/, "\\g{1}ies"},
                      {~r/(?i)(hive)$/, "\\1s"},
                      {~r/(?i)(?:([^f])fe|([lre])f)$/, "\\g{1}\\g{2}ves"},
                      {~r/(?i)sis$/, "ses"},
                      {~r/(?i)([ti])um$/, "\\g{1}a"},
                      {~r/(?i)(p)erson$/, "\\g{1}eople"},
                      {~r/(?i)(m)an$/, "\\g{1}en"},
                      {~r/(?i)(c)hild$/, "\\g{1}hildren"},
                      {~r/(?i)(buffal|tomat)o$/, "\\g{1}\\g{2}oes"},
                      {~r/(?i)(alumn|bacill|cact|foc|fung|nucle|radi|stimul|syllab|termin|vir)us$/,
                       "\\g{1}i"},
                      {~r/(?i)us$/, "uses"},
                      {~r/(?i)(alias)$/, "\\g{1}es"},
                      {~r/(?i)(ax|cris|test)is$/, "\\g{1}es"},
                      {~r/s$/, "s"},
                      {~r/^$/, ""},
                      {~r/$/, "s"}
                    ]

  @singular_regexps Application.get_env(:inflectorex, :singular, []) ++
                      [
                        {~r/(?i)(.*)\b((?:foes))$/, "foe"},
                        {~r/(?i)(.*)\b((?:waves))$/, "wave"},
                        {~r/(?i)(.*)\b((?:curves))$/, "curve"},
                        {~r/(?i)(.*)\b((?:atlases))$/, "atlas"},
                        {~r/(?i)(.*)\b((?:beefs))$/, "beef"},
                        {~r/(?i)(.*)\b((?:brothers))$/, "brother"},
                        {~r/(?i)(.*)\b((?:cafes))$/, "cafe"},
                        {~r/(?i)(.*)\b((?:children))$/, "child"},
                        {~r/(?i)(.*)\b((?:cookies))$/, "cookie"},
                        {~r/(?i)(.*)\b((?:corpuses))$/, "corpus"},
                        {~r/(?i)(.*)\b((?:cows))$/, "cow"},
                        {~r/(?i)(.*)\b((?:ganglions))$/, "ganglion"},
                        {~r/(?i)(.*)\b((?:genies))$/, "genie"},
                        {~r/(?i)(.*)\b((?:genera))$/, "genus"},
                        {~r/(?i)(.*)\b((?:graffiti))$/, "graffito"},
                        {~r/(?i)(.*)\b((?:hoofs))$/, "hoof"},
                        {~r/(?i)(.*)\b((?:loaves))$/, "loaf"},
                        {~r/(?i)(.*)\b((?:men))$/, "man"},
                        {~r/(?i)(.*)\b((?:monies))$/, "money"},
                        {~r/(?i)(.*)\b((?:mongooses))$/, "mongoose"},
                        {~r/(?i)(.*)\b((?:moves))$/, "move"},
                        {~r/(?i)(.*)\b((?:mythoi))$/, "mythos"},
                        {~r/(?i)(.*)\b((?:niches))$/, "niche"},
                        {~r/(?i)(.*)\b((?:numina))$/, "numen"},
                        {~r/(?i)(.*)\b((?:occiputs))$/, "occiput"},
                        {~r/(?i)(.*)\b((?:octopuses))$/, "octopus"},
                        {~r/(?i)(.*)\b((?:opuses))$/, "opus"},
                        {~r/(?i)(.*)\b((?:oxen))$/, "ox"},
                        {~r/(?i)(.*)\b((?:penises))$/, "penis"},
                        {~r/(?i)(.*)\b((?:people))$/, "person"},
                        {~r/(?i)(.*)\b((?:sexes))$/, "sex"},
                        {~r/(?i)(.*)\b((?:soliloquies))$/, "soliloquy"},
                        {~r/(?i)(.*)\b((?:testes))$/, "testis"},
                        {~r/(?i)(.*)\b((?:trilbys))$/, "trilby"},
                        {~r/(?i)(.*)\b((?:turfs))$/, "turf"},
                        {~r/(?i)(.*)\b((?:potatoes))$/, "potato"},
                        {~r/(?i)(.*)\b((?:heroes))$/, "hero"},
                        {~r/(?i)(.*)\b((?:teeth))$/, "tooth"},
                        {~r/(?i)(.*)\b((?:geese))$/, "goose"},
                        {~r/(?i)(.*)\b((?:feet))$/, "foot"},
                        {~r/eaus$/, "eau"},
                        {~r/(?i)(s)tatuses$/, "\\g{1}\\g{2}tatus"},
                        {~r/(?i)^(.*)(menu)s$/, "\\g{1}\\g{2}"},
                        {~r/(?i)(quiz)zes$/, "\\1"},
                        {~r/(?i)(matr)ices$/, "\\g{1}ix"},
                        {~r/(?i)(vert|ind)ices$/, "\\g{1}ex"},
                        {~r/(?i)^(ox)en/, "\\1"},
                        {~r/(?i)(alias)(es)*$/, "\\1"},
                        {~r/(?i)(alumn|bacill|cact|foc|fung|nucle|radi|stimul|syllab|termin|viri?)i$/,
                         "\\g{1}us"},
                        {~r/(?i)([ftw]ax)es/, "\\1"},
                        {~r/(?i)(cris|ax|test)es$/, "\\g{1}is"},
                        {~r/(?i)(shoe|slave)s$/, "\\1"},
                        {~r/(?i)(o)es$/, "\\1"},
                        {~r/ouses$/, "ouse"},
                        {~r/([^a])uses$/, "\\g{1}us"},
                        {~r/(?i)([m|l])ice$/, "\\g{1}ouse"},
                        {~r/(?i)(x|ch|ss|sh)es$/, "\\1"},
                        {~r/(?i)(m)ovies$/, "\\g{1}\\g{2}ovie"},
                        {~r/(?i)(s)eries$/, "\\g{1}\\g{2}eries"},
                        {~r/(?i)([^aeiouy]|qu)ies$/, "\\g{1}y"},
                        {~r/(?i)(tive)s$/, "\\1"},
                        {~r/(?i)([lre])ves$/, "\\g{1}f"},
                        {~r/(?i)([^fo])ves$/, "\\g{1}fe"},
                        {~r/(?i)(hive)s$/, "\\1"},
                        {~r/(?i)(drive)s$/, "\\1"},
                        {~r/(?i)(^analy)ses$/, "\\g{1}sis"},
                        {~r/(?i)(analy|diagno|^ba|(p)arenthe|(p)rogno|(s)ynop|(t)he)ses$/,
                         "\\g{1}\\g{2}sis"},
                        {~r/(?i)([ti])a$/, "\\g{1}um"},
                        {~r/(?i)(p)eople$/, "\\g{1}\\g{2}erson"},
                        {~r/(?i)(m)en$/, "\\g{1}an"},
                        {~r/(?i)(c)hildren$/, "\\g{1}\\g{2}hild"},
                        {~r/(?i)(n)ews$/, "\\g{1}\\g{2}ews"},
                        {~r/^(.*us)$/, "\\1"},
                        {~r/(?i)s$/, ""}
                      ]

  def in_uniflectable?(word, :singular) do
    in_uniflect?(word, @singular_uninflected) || Regex.match?(@uninflected, word)
  end

  def in_uniflectable?(word, :plural) do
    in_uniflect?(word, @plural_uninflected) || Regex.match?(@uninflected, word)
  end

  defp in_uniflect?(word, set) do
    case Enum.find(set, fn regex -> Regex.match?(regex, word) end) do
      nil -> false
      _ -> true
    end
  end

  def pluralize(word) do
    if in_uniflectable?(word, :plural) do
      word
    else
      find_replace(word, @plural_regexps)
    end
  end

  def singularize(word) do
    if in_uniflectable?(word, :singular) do
      word
    else
      find_replace(word, @singular_regexps)
    end
  end

  defp find_replace(word, set) do
    # will match to a pattern unless singular passed to singularize and plural
    # passed to pluralize       
    case Enum.find(set, nil, fn {regex, _} -> Regex.match?(regex, word) end) do
      # can't try any further lets return the same thing
      nil -> word
      {regex, repl} -> Regex.replace(regex, word, repl)
    end
  end
end
