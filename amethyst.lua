
function main ()
    while true do
        turtle.select(1)
        turtle.compare()
        print("Checking growth stage...")
        if turtle.compare() then
            print("Ready! Harvesting...")
            turtle.dig()
            turtle.select(2)
            print("Dropping...")
            turtle.turnLeft()
            turtle.turnLeft()
            turtle.drop(64)
            turtle.turnRight()
            turtle.turnRight()
            print("Done!")
        else
            print("Not ready")
        end
        print("Waiting for 60 seconds...")
        sleep(60)
    end
end

main()