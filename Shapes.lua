require ("main")
require ("Movement")
function love.draw ()

  love.graphics.setColor(255,255,255)
  floor = love.graphics.rectangle ("fill", 0, (h / 1.5) + 50, w, h / 1.5)

  wall = love.graphics.rectangle ("fill", w - 50, 0, 100, h)
  --wall2 = love.graphics.rectangle ("fill", w - 400, 0, 100, h / 2)

  love.graphics.setColor(255,0,0)
  box = love.graphics.rectangle("fill",x,y,50,50)

end
