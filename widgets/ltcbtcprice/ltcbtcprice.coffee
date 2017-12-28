class Dashing.Ltcbtcprice extends Dashing.Widget
  @accessor 'value', Dashing.AnimatedValue
  @accessor 'ltcbtcprice', ->
    if @get('value')
      price = parseFloat(@get('value'))
