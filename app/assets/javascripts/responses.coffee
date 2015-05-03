# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
if stmd?
  $(document).on 'ready page:load', ->
    $('[data-markdown]').each (i,div)->
      writer = new stmd.HtmlRenderer()
      reader = new stmd.DocParser()
      parsed = reader.parse $(div).html()
      if parsed?
        result = writer.renderBlock(parsed)
        $(div).html(result)