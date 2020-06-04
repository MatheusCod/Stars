require "stars"

function love.load()

  love.window.setTitle("Stars")
  windowWidth = 800
  windowHeight = 600
  love.window.setMode(windowWidth, windowHeight)

  stars = {}
  nStars = 2000
  for i=1,nStars/4 do
    stars[i] = newStar(1)
  end

  for i=nStars/4 + 1,nStars*(2/4) do
    stars[i] = newStar(2)
  end

  for i=nStars*(2/4) + 1,3*nStars/4 do
    stars[i] = newStar(3)
  end

  for i=3*nStars/4 + 1,nStars do
    stars[i] = newStar(4)  end

  acceleration = 20

end

function love.update(dt)

  for i=1,nStars do
    stars[i].x = stars[i].x + stars[i].cos * stars[i].speed * dt
    stars[i].y = stars[i].y + stars[i].sin * stars[i].speed * dt

    stars[i].speed = stars[i].speed + acceleration * dt
    if stars[i].radius <= 1.5 then
      stars[i].radius = stars[i].radius + stars[i].size_grow/acceleration * dt
    end

    if stars[i].quadrant == 1 and (stars[i].x >= windowWidth or stars[i].y >= windowHeight) then
      stars[i] = newStar(1)
    elseif stars[i].quadrant == 2 and (stars[i].x <= 0 or stars[i].y >= windowHeight) then
      stars[i] = newStar(2)
    elseif stars[i].quadrant == 3 and (stars[i].x <= 0 or stars[i].y <= 0) then
      stars[i] = newStar(3)
    elseif stars[i].quadrant == 4 and (stars[i].x >= windowWidth or stars[i].y <= 0) then
      stars[i] = newStar(4)
    end

  end

end

function love.draw()

  love.graphics.setColor(1, 1, 1)
  for i=1,nStars do
    love.graphics.circle("fill", stars[i].x, stars[i].y, stars[i].radius)
  end

end
