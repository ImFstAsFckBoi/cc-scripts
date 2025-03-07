


function try_harvest()
    turtle.select(1)
    print("Checking growth stage...")

    local front = turtle.compare()
    local up = turtle.compareUp()
    local down = turtle.compareDown()
    turtle.turnLeft()
    local left = turtle.compare()
    turtle.turnRight()
    turtle.turnRight()
    local right = turtle.compare()
    turtle.turnLeft()

    if front then
        print("Ready front! Harvesting...")
        turtle.dig()
    end

    if up then
        print("Ready up! Harvesting...")
        turtle.digUp()
    end

    if down then
        print("Ready down! Harvesting...")
        turtle.digDown()
    end

    if left then
        print("Ready left! Harvesting...")
        turtle.turnLeft()
        turtle.dig()
        turtle.turnRight()
    end

    if right then
        print("Ready right! Harvesting...")
        turtle.turnRight()
        turtle.dig()
        turtle.turnLeft()
    end
    
    if front or up or down or left or right then
        return
    end
    
    print("Nothing ready")
end


function main ()
    while true do
        try_harvest()
        
        turtle.select(2)
        if turtle.getItemCount() > 0 then
            print("Dropping...")
            turtle.turnLeft()
            turtle.turnLeft()
            turtle.drop(turtle.getItemCount())
            turtle.turnRight()
            turtle.turnRight()
            print("Done!")
        end

        print("Waiting for 60 seconds...")
        sleep(60)
    end
end


main()