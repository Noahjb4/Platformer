function love.load ()
  require ("Shapes")
  require ("Movement")
  w, h = love.graphics.getDimensions
  x = 0
  y = 0
  xv = 0
  yv = 0
  speed = 1000
  gravity = 400
  jump = -300
  window = 1
  love.window.setMode (800, 600, {resizable=true, minwidth=400, minheight=300})

end
