function love.load ()
  require ("Shapes")
  require ("Movement")
  w, h = love.graphics.getDimensions
  x = 0
  y = 400
  yv = 0
  speed = 300
  gravity = 400
  jump = -300
  love.window.setMode (800, 600, {resizable=true, minwidth=400, minheight=300})
end
