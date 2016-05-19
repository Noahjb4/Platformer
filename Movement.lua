require ("main")
function love.update (dt)

  if yv ~= 400 then
    y = y + yv * dt
    yv = yv + gravity * dt


    if y > 400 then
      yv = 400
      y = 400
    end
  end
  if love.keyboard.isDown ("d") then
    x = x + (speed*dt)
  end

  if love.keyboard.isDown ("a") then
    x = x - (speed*dt)
  end

  if love.keyboard.isDown ("escape") then
    love.event.quit ()
  end

  if y > 400 then
    y = 400
  end
end

function love.keypressed (key, scancode, isrepeat)
  if key == "w" then
    if yv == 400 then
      yv = jump
    end
  end
end
