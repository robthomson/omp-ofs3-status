local config = {}
config.widgetName = "OFS3 Flight Status"
config.widgetKey = "adshfs"
config.useCompiler = true


ofs3status = assert(loadfile("ofs3status.lua"))(config)

local function paint()
    return ofs3status.paint()
end

local function configure()
    return ofs3status.configure()
end

local function wakeup()
    return ofs3status.wakeup()
end

local function read()
    return ofs3status.read()
end

local function write()
    return ofs3status.write()
end

local function event(widget, category, value, x, y)
    return ofs3status.event(widget, category, value, x, y)
end

local function create()
    return ofs3status.create()
end

local function menu()
    return ofs3status.menu()
end

local function init()
    system.registerWidget({
        key = config.widgetKey,
        name = config.widgetName,
        create = create,
        configure = configure,
        paint = paint,
        wakeup = wakeup,
        read = read,
        write = write,
        event = event,
        menu = menu,
        persistent = false
    })

end

return {init = init}
