# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# jQuery ->
#   $('#recipe_ingredient_id').parent().hide()
#   ingredient = $('#recipe_ingredient_id').html()
#   console.log(ingredent)
#   $('#recipe_category_id').change ->
#     category = $('#recipe_category_id :selected').text()
#     options = $(ingredient).filter("optgroup[label=#{category}]").html()
#     console.log(options)
#     if options
#       $('#recipe_ingredient_id').html(options)
#       $('#recipe_ingredient_id').parent().show()      
#     else
#       $('#recipe_ingredient_id').empty()
#       $('#recipe_ingredient_id').parent().hide()

jQuery ->
  $('#recipe_ingredient_ids').chosen()
  
