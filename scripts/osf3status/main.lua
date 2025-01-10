local config = {}
config.widgetName = "OSF3 Flight Status"
config.widgetKey = "adshfs"
config.useCompiler = true


osf3status = assert(loadfile("osf3status.lua"))(config)

local function paint()
    return osf3status.paint()
end

local function configure()
    return osf3status.configure()
end

local function wakeup()
    return osf3status.wakeup()
end

local function read()
    return osf3status.read()
end

local function write()
    return osf3status.write()
end

local function event(widget, category, value, x, y)
    return osf3status.event(widget, category, value, x, y)
end

local function create()
    return osf3status.create()
end

local function menu()
    return osf3status.menu()
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
