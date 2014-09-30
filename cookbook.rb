class Cookbook

  attr_accessor :title, :recipes

  def initialize(title)
    @title = title
    @recipes = []
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def recipe_titles
    @recipes.each do |recipe|
      p recipe.title
    end
  end

  def print_cookbook

    @recipes.each do |recipe|
      p "This is the recipe for: #{recipe.title}"
      p "***********************"
      p "These are ingredients:"
      recipe.ingredients.each_with_index {|ingredient, index| p "#{index+1}. #{ingredient}"}
      p "***********************"
      p "And here is how you can do it:"
      recipe.steps.each_with_index {|step, index| p "#{index+1}. #{step}"}
    end
  end

end

class Recipe

    attr_accessor :title, :ingredients, :steps

  def initialize(title, ingredients, steps)
    @title = title
    @ingredients = ingredients
    @steps = steps
  end

  def print_recipe
    p "This is a recipe FOR #{@title}"
    p "This is what we need: #{@ingredients.join(',')}"
    p "This is how we do it: #{@steps.join(',')}"

  end

end

mex_cuisine = Cookbook.new("Mexican Cooking")
burrito = Recipe.new("Bean Burrito", ["tortilla", "bean"], ["heat beans", "place beans in tortilla", "roll up"])

 mex_cuisine.title # Mexican Cooking
 burrito.title # Bean Burrito
burrito.ingredients # ["tortilla", "bean", "cheese"]
 burrito.steps # ["heat beans", "heat tortilla", "place beans in tortilla", "sprinkle cheese on top", "roll up"]

mex_cuisine.title = "Mexican Recipes"
 mex_cuisine.title # Mexican Recipes

burrito.title = "Veggie Burrito"
burrito.ingredients = ["tortilla", "tomatoes"]
burrito.steps = ["heat tomatoes", "place tomatoes in tortilla", "roll up"]

burrito.title # "Veggie Burrito" burrito.ingredients # ["tortilla", "tomatoes"]


mex_cuisine.recipes # []
mex_cuisine.add_recipe(burrito)
mex_cuisine.recipes # [#<Recipe:0x007fbc3b92e560 @title="Veggie Burrito", @ingredients=["tortilla", "tomatoes"], @steps=["heat tomatoes", "place tomatoes in tortilla", "roll up"]>]
mex_cuisine.recipe_titles # Veggie Burrito


bunbohue = Recipe.new("Bun bo hue", ["hen", "bac ha"], ["cat rau", "xao hen","bo vo to"])

mex_cuisine.add_recipe(bunbohue)
#bunbohue.print_recipe
mex_cuisine.recipe_titles
mex_cuisine.print_cookbook
