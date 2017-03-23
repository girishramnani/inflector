defmodule Inflector.Regexps do
    
    @singular_uninflected [
                         ~r/.*[nrlm]ese/, 
                         ~r/.*deer/, 
                         ~r/.*fish/, 
                         ~r/.*measles/, 
                         ~r/.*ois/, 
                         ~r/.*pox/,
                         ~r/.*sheep/,
                         ~r/.*ss/ 

    ]


    @plural_uninflected [
                         ~r/.*[nrlm]ese/, 
                         ~r/.*deer/, 
                         ~r/.*fish/, 
                         ~r/.*measles/, 
                         ~r/.*ois/, 
                         ~r/.*pox/,
                         ~r/.*sheep/, 
                         ~r/people/
                        ]

    @uninflected ~r/(Amoyese
                    |bison
                    |Borghese
                    |bream
                    |breeches
                    |britches
                    |buffalo
                    |cantus
                    |carp
                    |chassis
                    |clippers
                    |cod
                    |coitus
                    |Congoese
                    |contretemps
                    |corps
                    |debris
                    |diabetes
                    |djinn
                    |eland
                    |elk
                    |equipment
                    |Faroese
                    |flounder
                    |Foochowese
                    |gallows
                    |Genevese
                    |Genoese
                    |Gilbertese
                    |graffiti
                    |headquarters
                    |herpes
                    |hijinks
                    |Hottentotese
                    |information
                    |innings
                    |jackanapes
                    |Kiplingese
                    |Kongoese
                    |Lucchese
                    |mackerel
                    |Maltese
                    |.*?media
                    |mews
                    |moose
                    |mumps
                    |Nankingese
                    |news
                    |nexus
                    |Niasese
                    |Pekingese
                    |Piedmontese
                    |pincers
                    |Pistoiese
                    |pliers
                    |Portuguese
                    |proceedings
                    |rabies
                    |rice
                    |rhinoceros
                    |salmon
                    |Sarawakese
                    |scissors
                    |sea[- ]bass
                    |series
                    |Shavese
                    |shears
                    |siemens
                    |species
                    |swine
                    |testes
                    |trousers
                    |trout
                    |tuna
                    |Vermontese
                    |Wenchowese
                    |whiting
                    |wildebeest
                    |Yengeese)/mix


    @plural_regular_regexps [
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

    @plural_irregular_regexps [
                     {~r/atlas/, "atlases"}, 
                     {~r/beef/, "beefs"}, 
                     {~r/brother/, "brothers"},
                     {~r/cafe/, "cafes"}, 
                     {~r/child/, "children"}, 
                     {~r/cookie/, "cookies"},
                     {~r/corpus/, "corpuses"}, 
                     {~r/cow/, "cows"}, 
                     {~r/ganglion/, "ganglions"},
                     {~r/genie/, "genies"}, 
                     {~r/genus/, "genera"}, 
                     {~r/graffito/, "graffiti"}, 
                     {~r/hoof/, "hoofs"}, 
                     {~r/loaf/, "loaves"}, 
                     {~r/man/, "men"},
                     {~r/money/, "monies"}, 
                     {~r/mongoose/, "mongooses"}, 
                     {~r/move/, "moves"}, 
                     {~r/mythos/, "mythoi"}, 
                     {~r/niche/, "niches"}, 
                     {~r/numen/, "numina"},
                     {~r/occiput/, "occiputs"}, 
                     {~r/octopus/, "octopuses"}, 
                     {~r/opus/, "opuses"}, 
                     {~r/ox/, "oxen"}, 
                     {~r/penis/, "penises"}, 
                     {~r/person/, "people"}, 
                     {~r/sex/, "sexes"}, 
                     {~r/soliloquy/, "soliloquies"}, 
                     {~r/testis/, "testes"}, 
                     {~r/trilby/, "trilbys"}, 
                     {~r/turf/, "turfs"}, 
                     {~r/potato/, "potatoes"}, 
                     {~r/hero/, "heroes"}, 
                     {~r/tooth/, "teeth"}, 
                     {~r/goose/, "geese"}, 
                     {~r/foot/, "feet"}
                    ]


    
    @singular_regular_regexps [
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
    
    @singular_irregular_regexps [
                     {~r/foes/, "foe"}, 
                     {~r/waves/, "wave"}, 
                     {~r/curves/, "curve"}, 
                     {~r/atlases/, "atlas"}, 
                     {~r/beefs/, "beef"}, 
                     {~r/brothers/, "brother"}, 
                     {~r/cafes/, "cafe"}, 
                     {~r/children/, "child"}, 
                     {~r/cookies/, "cookie"}, 
                     {~r/corpuses/, "corpus"}, 
                     {~r/cows/, "cow"}, 
                     {~r/ganglions/, "ganglion"}, 
                     {~r/genies/, "genie"}, 
                     {~r/genera/, "genus"}, 
                     {~r/graffiti/, "graffito"}, 
                     {~r/hoofs/, "hoof"}, 
                     {~r/loaves/, "loaf"}, 
                     {~r/men/, "man"}, 
                     {~r/monies/, "money"}, 
                     {~r/mongooses/, "mongoose"}, 
                     {~r/moves/, "move"}, 
                     {~r/mythoi/, "mythos"}, 
                     {~r/niches/, "niche"}, 
                     {~r/numina/, "numen"}, 
                     {~r/occiputs/, "occiput"}, 
                     {~r/octopuses/, "octopus"}, 
                     {~r/opuses/, "opus"}, 
                     {~r/oxen/, "ox"}, 
                     {~r/penises/, "penis"}, 
                     {~r/people/, "person"}, 
                     {~r/sexes/, "sex"}, 
                     {~r/soliloquies/, "soliloquy"}, 
                     {~r/testes/, "testis"}, 
                     {~r/trilbys/, "trilby"}, 
                     {~r/turfs/, "turf"}, 
                     {~r/potatoes/, "potato"},
                     {~r/heroes/, "hero"}, 
                     {~r/teeth/, "tooth"}, 
                     {~r/geese/, "goose"}, 
                     {~r/feet/, "foot"}
                    ]

    def irregular(:plural) do
        @plural_irregular_regexps
    end
   
    def irregular(:singular) do
        @singular_irregular_regexps
    end

    def regular(:plural) do 
        @plural_regular_regexps    
    end

    def regular(:singular) do 
        @singular_regular_regexps
    end

    def uninflected(:singular) do
        @singular_uninflected
    end

     def uninflected(:plural) do
        @plural_uninflected
    end

     def uninflected() do
         @uninflected
     end
    
                    

end