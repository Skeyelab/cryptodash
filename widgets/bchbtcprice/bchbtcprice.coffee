class Dashing.Bchbtcprice extends Dashing.Widget
  @accessor 'value', Dashing.AnimatedValue
  @accessor 'bchbtcprice', ->
    if @get('value')
      price = parseFloat(@get('value'))
