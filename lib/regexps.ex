defmodule Inflector.Regexp do
    

    @plural_regular_regexp [
                     {~r/(?i)(s)tatus$/, "${1}${2}tatuses"},
                     {~r/(?i)(quiz)$/, "${1}zes"},
                     {~r/(?i)^(ox)$/, "${1}${2}en"},
                     {~r/(?i)([m|l])ouse$/, "${1}ice"},
                     {~r/(?i)(matr|vert|ind)(ix|ex)$/, "${1}ices"},
                     {~r/(?i)(x|ch|ss|sh)$/, "${1}es"},
                     {~r/(?i)([^aeiouy]|qu)y$/, "${1}ies"},
                     {~r/(?i)(hive)$/, "$1s"}, 
                     {~r/(?i)(?:([^f])fe|([lre])f)$/, "${1}${2}ves"},
                     {~r/(?i)sis$/, "ses"}, 
                     {~r/(?i)([ti])um$/, "${1}a"},
                     {~r/(?i)(p)erson$/, "${1}eople"}, {~r/(?i)(m)an$/, "${1}en"},
                     {~r/(?i)(c)hild$/, "${1}hildren"}, {~r/(?i)(buffal|tomat)o$/, "${1}${2}oes"},
                     {~r/(?i)(alumn|bacill|cact|foc|fung|nucle|radi|stimul|syllab|termin|vir)us$/,"${1}i"},          
                     {~r/(?i)us$/, "uses"}, 
                     {~r/(?i)(alias)$/, "${1}es"},
                     {~r/(?i)(ax|cris|test)is$/, "${1}es"}, 
                     {~r/s$/, "s"}, 
                     {~r/^$/, ""},
                     {~r/$/, "s"}
                    ]

    
    @singular_regular_regexp [
                     {~r/(?i)(s)tatuses$/, "${1}${2}tatus"},
                     {~r/(?i)^(.*)(menu)s$/, "${1}${2}"},
                     {~r/(?i)(quiz)zes$/, "$1"},
                     {~r/(?i)(matr)ices$/, "${1}ix"},
                     {~r/(?i)(vert|ind)ices$/, "${1}ex"},
                     {~r/(?i)^(ox)en/, "$1"},
                     {~r/(?i)(alias)(es)*$/, "$1"},
                     {~r/(?i)(alumn|bacill|cact|foc|fung|nucle|radi|stimul|syllab|termin|viri?)i$/,"${1}us"},
                     {~r/(?i)([ftw]ax)es/, "$1"},
                     {~r/(?i)(cris|ax|test)es$/, "${1}is"},
                     {~r/(?i)(shoe|slave)s$/, "$1"}, 
                     {~r/(?i)(o)es$/, "$1"}, 
                     {~r/ouses$/, "ouse"},
                     {~r/([^a])uses$/, "${1}us"}, 
                     {~r/(?i)([m|l])ice$/, "${1}ouse"},
                     {~r/(?i)(x|ch|ss|sh)es$/, "$1"}, 
                     {~r/(?i)(m)ovies$/, "${1}${2}ovie"},
                     {~r/(?i)(s)eries$/, "${1}${2}eries"}, 
                     {~r/(?i)([^aeiouy]|qu)ies$/, "${1}y"},
                     {~r/(?i)(tive)s$/, "$1"}, 
                     {~r/(?i)([lre])ves$/, "${1}f"},
                     {~r/(?i)([^fo])ves$/, "${1}fe"}, 
                     {~r/(?i)(hive)s$/, "$1"},
                     {~r/(?i)(drive)s$/, "$1"}, 
                     {~r/(?i)(^analy)ses$/, "${1}sis"},
                     {~r/(?i)(analy|diagno|^ba|(p)arenthe|(p)rogno|(s)ynop|(t)he)ses$/,"${1}${2}sis"}, 
                     {~r/(?i)([ti])a$/, "${1}um"},
                     {~r/(?i)(p)eople$/, "${1}${2}erson"}, 
                     {~r/(?i)(m)en$/, "${1}an"},
                     {~r/(?i)(c)hildren$/, "${1}${2}hild"}, 
                     {~r/(?i)(n)ews$/, "${1}${2}ews"},
                     {~r/eaus$/, "eau"}, 
                     {~r/^(.*us)$/, "$1"}, 
                     {~r/(?i)s$/, ""}
                    ]


    def regular(:plural) do 
        return @plural_regular_regexp    
    end

    def regular(:singular) do 
        return @singular_regular_regexp
    end
    
                    

end