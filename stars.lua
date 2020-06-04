function newStar(quadrant)

  aux = {}
  grow_array = {}
  for i=0,11 do
    grow_array[i] = 0.01
  end
  grow_array[12] = 2
  grow_array[13] = 2
  grow_array[14] = 15

  -- The sin and cos value were calculated using the application's screen center
  -- as the axis center.

  if quadrant == 1 then
    aux.x = love.math.random(windowWidth/2, windowWidth)
    aux.y = love.math.random(windowHeight/2, windowHeight)
    aux.sin = (aux.y - windowHeight/2)/(aux.x^2 + aux.y^2)^0.5
    aux.cos = (aux.x - windowWidth/2)/(aux.x^2 + aux.y^2)^0.5
    aux.radius = 0.01
    aux.quadrant = 1
    aux.limitX = windowWidth
    aux.limitY = windowHeight
    aux.size_grow = grow_array[love.math.random(0, table.getn(grow_array))]
  elseif quadrant == 2 then
    aux.x = love.math.random(0, windowWidth/2)
    aux.y = love.math.random(windowHeight/2, windowHeight)
    aux.sin = (aux.y - windowHeight/2)/(aux.x^2 + aux.y^2)^0.5
    aux.cos = (aux.x - windowWidth/2)/(aux.x^2 + aux.y^2)^0.5
    aux.radius = 0.1
    aux.quadrant = 2
    aux.limitX = windowWidth/2
    aux.limitY = windowHeight
    aux.size_grow = grow_array[love.math.random(0, table.getn(grow_array))]
  elseif quadrant == 3 then
    aux.x = love.math.random(0, windowWidth/2)
    aux.y = love.math.random(0, windowHeight/2)
    aux.sin = (aux.y - windowHeight/2)/(aux.x^2 + aux.y^2)^0.5
    aux.cos = (aux.x - windowWidth/2)/(aux.x^2 + aux.y^2)^0.5
    aux.radius = 0.1
    aux.quadrant = 3
    aux.limitX = windowWidth/2
    aux.limitY = windowHeight/2
    aux.size_grow = grow_array[love.math.random(0, table.getn(grow_array))]
  elseif quadrant == 4 then
    aux.x = love.math.random(windowWidth/2, windowWidth)
    aux.y = love.math.random(0, windowHeight/2)
    aux.sin = (aux.y - windowHeight/2)/(aux.x^2 + aux.y^2)^0.5
    aux.cos = (aux.x - windowWidth/2)/(aux.x^2 + aux.y^2)^0.5
    aux.radius = 0.1
    aux.quadrant = 4
    aux.limitX = windowWidth
    aux.limitY = windowHeight/2
    aux.size_grow = grow_array[love.math.random(0, table.getn(grow_array))]
  end

  aux.radius = 0.5
  if (aux.size_grow == 0.01) then
    aux.speed = 0.2
  end
  aux.speed = 1

  return aux

end
