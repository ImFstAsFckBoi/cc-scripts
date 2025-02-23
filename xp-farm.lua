

function main()
    t1 = peripheral.find("create:fluid_tank_0") or error("No fluid tank 0!")
    t2 = peripheral.find("create:fluid_tank_1") or error("No fluid tank 1!")
    m = peripheral.find("monitor") or error("No Monitor!")
    
    if t1.tanks().name == "create_enchantment_industry:hyper_experience" then
        hxp = t1
        xp = t2
    else
        hxp = t2
        xp = t1
    end

    m.clear()
    -- For 5x1 monitor
    m.setCursorPos(9,1)
    m.setTextScale(2)
    m.write("Starting...")

    while true do
        m.clear()
        -- For 5x1 monitor
        m.setCursorPos(7,1)
        m.write(string.format("%d mB XP", xp.tanks().amount))
        m.setCursorPos(7,2)
        m.write(string.format("%d mB HXP", hxp.tanks().amount))
        print("Update done")
        sleep(5)
    end
end

main()