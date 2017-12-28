class Dashing.Ethbtcprice extends Dashing.Widget
  @accessor 'value', Dashing.AnimatedValue
  @accessor 'ethbtcprice', ->
    if @get('value')
      price = parseFloat(@get('value'))
