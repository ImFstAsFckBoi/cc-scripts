

function get_sum(chest)
    local count = 0
    for s = 1, c.size() do
        i =  c.getItemDetail(s) or { count=0 }
        count = count + i.count
    end
    return count
end


function main()
    c = peripheral.wrap("right") or error("No Inventory!")
    m = peripheral.find("monitor") or error("No Monitor!")
    
    m.clear()
    -- For 5x1 monitor
    m.setCursorPos(9,1)
    m.setTextScale(2)
    m.write("Starting...")

    local max = 0
    local current = 0
    
    for s = 1, c.size() do
        max = max + c.getItemLimit(s)
        i =  c.getItemDetail(s) or { count=0 }
        current = current + i.count
    end

    while true do
        current = get_sum()
        
        m.clear()
        -- For 5x1 monitor
        m.setCursorPos(7,1)
        m.write(string.format("%d/%d XP", current, max))
        print("Update done")
    end
end

main()