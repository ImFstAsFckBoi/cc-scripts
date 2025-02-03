


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
    
    if not front and not up and not down and not left and not right then
        print("Not ready")
        return true
    end
    
    return false
end


function main ()
    while true do

        if try_harvest() then
            print("Dropping...")
            turtle.select(2)
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