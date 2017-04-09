defmodule InflectorTest do
  use ExUnit.Case

  @pluralize_inputs [
  {"categoria", "categorias"},
	{"house", "houses"},
	{"powerhouse", "powerhouses"},
	{"Bus", "Buses"},
	{"bus", "buses"},
	{"menu", "menus"},
	{"news", "news"},
	{"food_menu", "food_menus"},
	{"Menu", "Menus"},
	{"FoodMenu", "FoodMenus"},
	{"quiz", "quizzes"},
	{"matrix_row", "matrix_rows"},
	{"matrix", "matrices"},
	{"vertex", "vertices"},
	{"index", "indices"},
	{"Alias", "Aliases"},
	{"Aliases", "Aliases"},
	{"Media", "Media"},
	{"NodeMedia", "NodeMedia"},
	{"alumnus", "alumni"},
	{"bacillus", "bacilli"},
	{"cactus", "cacti"},
	{"focus", "foci"},
	{"fungus", "fungi"},
	{"nucleus", "nuclei"},
	{"octopus", "octopuses"},
	{"radius", "radii"},
	{"stimulus", "stimuli"},
	{"syllabus", "syllabi"},
	{"terminus", "termini"},
	{"virus", "viri"},
	{"person", "people"},
	{"people", "people"},
	{"glove", "gloves"},
	{"crisis", "crises"},
	{"tax", "taxes"},
	{"wave", "waves"},
	{"bureau", "bureaus"},
	{"cafe", "cafes"},
	{"roof", "roofs"},
	{"foe", "foes"},
	{"cookie", "cookies"},
	{"wolf", "wolves"},
	{"thief", "thieves"},
	{"potato", "potatoes"},
	{"hero", "heroes"},
	{"buffalo", "buffalo"},
	{"tooth", "teeth"},
	{"goose", "geese"},
	{"foot", "feet"},
	{"objective", "objectives"},
	{"specie", "species"},
	{"species", "species"},
	{"", ""}
  ]

  test "pluralize some words" do
    assert Enum.all?(@pluralize_inputs,fn {input,output} -> Inflector.pluralize(input) == output end) == true
  end
 


end
