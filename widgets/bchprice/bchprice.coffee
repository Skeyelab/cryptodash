class Dashing.Bchprice extends Dashing.Widget
  @accessor 'value', Dashing.AnimatedValue
  @accessor 'bchprice', ->
    if @get('value')
      price = parseFloat(@get('value'))
