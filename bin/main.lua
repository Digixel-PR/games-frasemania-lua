function love.draw()    
    love.graphics.setColor(255, 255, 255, light)
    love.graphics.draw(galaxy, 0, 0)
    if light > 1 then
        love.graphics.newFont(34)

        love.graphics.print("Episode II\nATTACK OF THE CLONES\n\nIt is a period of civil war. Rebel spaceships, striking from a hidden base, have won their first victory against the evil Galactic Empire. During the battle, Rebel spies managed to steal secret plans to the Empire's ultimate weapon, the Death Star, an armored space station with enough power to destroy an entire planet. Pursued by the Empire's sinister agents, Princess Leia races home aboard her starship, custodian of the stolen plans that can save her people and restore freedom to the galaxy....", 325, y, 0, center)
    end
end

function love.load()   
    light = 0
    flag = 1
    speed = 100
    y = 400 

    galaxy = love.graphics.newImage("galaxy.jpg")     
    sound = love.audio.newSource("intro.ogg", "stream")
    love.audio.play(sound)
end

function love.update(dt)	    
    if light > 1 then        
        y =  y - dt*speed
    else
        light = light + (dt*flag/5)
    end
    
    
end