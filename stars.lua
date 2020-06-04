function newStar(quadrant)

  aux = {}
  grow_array = {}
  grow_array[0] = 0.01
  grow_array[1] = 0.01
  grow_array[2] = 0.01
  grow_array[3] = 0.01
  grow_array[4] = 0.01
  grow_array[5] = 0.01
  grow_array[6] = 0.01
  grow_array[7] = 0.01
  grow_array[8] = 0.01
  grow_array[9] = 0.01
  grow_array[10] = 0.01
  grow_array[11] = 0.01
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

function degTorad(var)
  return (var*math.pi)/180
end

function distanceToCenter(positionX, positionY)
  return (positionX^2 + positionY^2)
end

function newStar2(quadrant)

  aux = {}

  if quadrant == 1 then
    aux.x = love.math.random(windowWidth/2 - 50, windowWidth)
    aux.y = love.math.random(windowHeight/2 - 50, windowHeight)
    --angle = love.math.random(0, math.pi/2*100)/100
    --angle = love.math.random(degTorad(0), degTorad(90*100))/100
    angle = love.math.random(degTorad(15*100), degTorad(30*100))/100
    aux.sin = math.sin(angle)
    aux.cos = math.cos(angle)
    aux.radius = 0.1
    aux.quadrant = 1
    aux.limitX = windowWidth
    aux.limitY = windowHeight
  elseif quadrant == 2 then
    aux.x = love.math.random(0, windowWidth/2 + 50 )
    aux.y = love.math.random(windowHeight/2 - 50, windowHeight)
    --angle = love.math.random(math.pi/2*100, math.pi*100)/100
    --angle = love.math.random(degTorad(90/100), degTorad(180*100))/100
    angle = love.math.random(degTorad(105*100), degTorad(160*100))/100
    aux.sin = math.sin(angle)
    aux.cos = math.cos(angle)
    aux.radius = 0.1
    aux.quadrant = 2
    aux.limitX = windowWidth/2
    aux.limitY = windowHeight
  elseif quadrant == 3 then
    aux.x = love.math.random(0, windowWidth/2 + 50)
    aux.y = love.math.random(0, windowHeight/2 + 50)
    --angle = love.math.random(math.pi*100, 3*math.pi/2*100)/100
    --angle = love.math.random(degTorad(180), degTorad(270*100))/100
    angle = love.math.random(degTorad(195*100), degTorad(240*100))/100
    aux.sin = math.sin(angle)
    aux.cos = math.cos(angle)
    aux.radius = 0.1
    aux.quadrant = 3
    aux.limitX = windowWidth/2
    aux.limitY = windowHeight/2
  elseif quadrant == 4 then
    aux.x = love.math.random(windowWidth/2 - 50, windowWidth)
    aux.y = love.math.random(0, windowHeight/2 + 50)
    --angle = love.math.random(3*math.pi/2*100, 2*math.pi*100)/100
    --angle = love.math.random(degTorad(270), degTorad(360*100))/100
    angle = love.math.random(degTorad(285*100), degTorad(330*100))/100
    aux.sin = math.sin(angle)
    aux.cos = math.cos(angle)
    aux.radius = 0.1
    aux.quadrant = 4
    aux.limitX = windowWidth
    aux.limitY = windowHeight/2
  end

  aux.radius = 1
  aux.speed = 5

  return aux

end
