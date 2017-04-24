# Inflectorex
[![Build Status](https://travis-ci.org/girishramnani/inflector.svg?branch=master)](https://travis-ci.org/girishramnani/inflector)



Inflectorex pluralizes and singularizes English nouns.


# Usage

```elixir

Inflectorex.singularize("workers") # will give "worker"

Inflectorex.pluralize("secret") # will give "secrets"


```

# Extending the regex lists

Currently the application has 4 regex lists.
You can extend these lists using the `config` block. To extend each of the lists the
keys are as follows -

+ `@plural_regexps` - `plural` 
+ `@singular_regexps` - `singular`
+ `@singular_uninflected` - `singular_uninflected`
+ `@plural_uninflected` - `plural_uninflected`


<sub> Note - right is the key </sub>

## Example config

```

config  :inflectorex, plural: [
    {~r/developer/ , "developers"},
    {~r/elixir/, "elixirs"}
    ]  


```



# Todo

- [x] Implement caching
- [x] Error handling
- [ ] code commenting
- [x] tests
- [x] publishing to hex.pm

# Credits

+ CakePHP's inflector
+ degex/inflector

# License

MIT
