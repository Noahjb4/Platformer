require ("main")
function love.update (dt)
  w, h = love.graphics.getDimensions ()

  if yv ~= h / 1.5 then
    y = y + yv * dt
    yv = yv + gravity * dt


    if y > h / 1.5 then
      yv = h / 1.5
      y = h / 1.5
    end
  end

  if x >= w - 100 then
    x = w - 100
  end

  x = x + xv * dt
  if love.keyboard.isDown ("d") then
    xv = xv + speed * dt
  end

  if love.keyboard.isDown ("a") then
    xv = xv - speed * dt
  end

  if love.keyboard.isDown ("escape") then
    love.event.quit ()
  end
  xv = xv * 0.95

  if window == 1 then
    love.window.setFullscreen (false)
  elseif window == 2 then
    love.window.setFullscreen (true)
  end


end

function love.keypressed (key, scancode, isrepeat)
  if key == "space" then
    if yv == h / 1.5 then
      yv = jump
    end

    if x >= w - 100 then
      yv = yv - y
      xv = xv - x
    end
  end

  if key == "f" then
    if window == 1 then
      window = 2
    elseif window == 2 then
      window = 1
    end
  end
end
