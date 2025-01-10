osf3status = {}

local arg = {...}

local environment = system.getVersion()

osf3status.oldsensors = {"osf3status.refresh", "voltage", "rpm", "current", "temp_esc", "temp_mcu", "fuel", "mah", "rssi", "fm", "govmode"}
osf3status.isVisible = nil
osf3status.isDARKMODE = nil
osf3status.loopCounter = 0
osf3status.sensors = nil
osf3status.gfx_model = nil
osf3status.theTIME = 0
osf3status.sensors = {}
osf3status.sensordisplay = {}
osf3status.theme = {}
osf3status.lvTimer = false
osf3status.lvTimerStart = nil
osf3status.lvannouncementTimer = false
osf3status.lvannouncementTimerStart = nil
osf3status.lvaudioannouncementCounter = 0
osf3status.lvAudioAlertCounter = 0
osf3status.motorWasActive = false
osf3status.lfTimer = false
osf3status.lfTimerStart = nil
osf3status.lfannouncementTimer = false
osf3status.lfannouncementTimerStart = nil
osf3status.lfaudioannouncementCounter = 0
osf3status.lfAudioAlertCounter = 0
osf3status.timeralarmVibrateParam = true
osf3status.timeralarmParam = 210
osf3status.timerAlarmPlay = true
osf3status.statusColorParam = true
osf3status.rpmtime = {}
osf3status.rpmtime.rpmTimer = false
osf3status.rpmtime.rpmTimerStart = nil
osf3status.rpmtime.announcementTimer = false
osf3status.rpmtime.announcementTimerStart = nil
osf3status.rpmtime.audioannouncementCounter = 0
osf3status.currenttime = {}
osf3status.currenttime.currentTimer = false
osf3status.currenttime.currentTimerStart = nil
osf3status.currenttime.currentannouncementTimer = false
osf3status.currenttime.currentannouncementTimerStart = nil
osf3status.currenttime.currentaudioannouncementCounter = 0
osf3status.lqtime = {}
osf3status.lqtime.lqTimer = false
osf3status.lqtime.lqTimerStart = nil
osf3status.lqtime.lqannouncementTimer = false
osf3status.lqtime.lqannouncementTimerStart = nil
osf3status.lqtime.lqaudioannouncementCounter = 0
osf3status.fueltime = {}
osf3status.fueltime.fuelTimer = false
osf3status.fueltime.fuelTimerStart = nil
osf3status.fueltime.fuelannouncementTimer = false
osf3status.fueltime.fuelannouncementTimerStart = nil
osf3status.fueltime.fuelaudioannouncementCounter = 0
osf3status.esctime = {}
osf3status.esctime.escTimer = false
osf3status.esctime.escTimerStart = nil
osf3status.esctime.escannouncementTimer = false
osf3status.esctime.escannouncementTimerStart = nil
osf3status.esctime.escaudioannouncementCounter = 0
osf3status.mcutime = {}
osf3status.mcutime.mcuTimer = false
osf3status.mcutime.mcuTimerStart = nil
osf3status.mcutime.mcuannouncementTimer = false
osf3status.mcutime.mcuannouncementTimerStart = nil
osf3status.mcutime.mcuaudioannouncementCounter = 0
osf3status.timetime = {}
osf3status.timetime.timerTimer = false
osf3status.timetime.timerTimerStart = nil
osf3status.timetime.timerannouncementTimer = false
osf3status.timetime.timerannouncementTimerStart = nil
osf3status.timetime.timeraudioannouncementCounter = 0
osf3status.linkUP = 0
osf3status.linkUPTime = 0
osf3status.refresh = true
osf3status.isInConfiguration = false
osf3status.stopTimer = true
osf3status.startTimer = false
osf3status.voltageIsLow = false
osf3status.voltageIsGettingLow = false
osf3status.fuelIsLow = false
osf3status.fuelIsGettingLow = false
osf3status.showLOGS = false
osf3status.readLOGS = false
osf3status.readLOGSlast = {}
osf3status.playGovernorCount = 0
osf3status.playGovernorLastState = nil
osf3status.playrpmdiff = {}
osf3status.playrpmdiff.playRPMDiffCount = 1
osf3status.playrpmdiff.playRPMDiffLastState = nil
osf3status.playrpmdiff.playRPMDiffCounter = 0
osf3status.lvStickOrder = {}
osf3status.lvStickOrder[1] = {1, 2, 3, 4}
osf3status.lvStickOrder[2] = {1, 2, 4, 5}
osf3status.lvStickOrder[3] = {1, 2, 4, 6}
osf3status.lvStickOrder[4] = {2, 3, 4, 6}
osf3status.switchstatus = {}
osf3status.quadBoxParam = 0
osf3status.lowvoltagStickParam = 0
osf3status.lowvoltagStickCutoffParam = 70
osf3status.govmodeParam = 1
osf3status.btypeParam = 0
osf3status.lowvoltagStickParam = nil
osf3status.lowvoltagStickCutoffParam = nil
osf3status.lowvoltagStickCutoffParam = 80
osf3status.lowfuelParam = 20
osf3status.alertintParam = 5
osf3status.alrthptcParam = 1
osf3status.maxminParam = true
osf3status.titleParam = true
osf3status.modelImageParam = true
osf3status.cellsParam = 3
osf3status.lowVoltageGovernorParam = true
osf3status.sagParam = 5
osf3status.rpmAlertsParam = false
osf3status.rpmAlertsPercentageParam = 100
osf3status.governorAlertsParam = true
osf3status.announcementVoltageSwitchParam = nil
osf3status.announcementRPMSwitchParam = nil
osf3status.announcementCurrentSwitchParam = nil
osf3status.announcementFuelSwitchParam = nil
osf3status.announcementLQSwitchParam = nil
osf3status.announcementESCSwitchParam = nil
osf3status.announcementMCUSwitchParam = nil
osf3status.announcementTimerSwitchParam = nil
osf3status.filteringParam = 1
osf3status.lowvoltagsenseParam = 2
osf3status.announcementIntervalParam = 30
osf3status.lowVoltageGovernorParam = nil
osf3status.governorUNKNOWNParam = true
osf3status.governorDISARMEDParam = true
osf3status.governorDISABLEDParam = true
osf3status.governorAUTOROTParam = true
osf3status.governorLOSTHSParam = true
osf3status.governorTHROFFParam = true
osf3status.governorACTIVEParam = true
osf3status.governorRECOVERYParam = true
osf3status.governorSPOOLUPParam = true
osf3status.governorIDLEParam = true
osf3status.governorOFFParam = true
osf3status.alertonParam = 0
osf3status.calcfuelParam = false
osf3status.tempconvertParamESC = 1
osf3status.tempconvertParamMCU = 1
osf3status.idleupdelayParam = 20
osf3status.switchIdlelowParam = nil
osf3status.switchIdlemediumParam = nil
osf3status.switchIdlehighParam = nil
osf3status.switchrateslowParam = nil
osf3status.switchratesmediumParam = nil
osf3status.switchrateshighParam = nil
osf3status.switchrescueonParam = nil
osf3status.switchrescueoffParam = nil
osf3status.switchbblonParam = nil
osf3status.switchbbloffParam = nil
osf3status.idleupswitchParam = nil
osf3status.timerWASActive = false
osf3status.govWasActive = false
osf3status.maxMinSaved = false
osf3status.simPreSPOOLUP = false
osf3status.simDoSPOOLUP = false
osf3status.simDODISARM = false
osf3status.simDoSPOOLUPCount = 0
osf3status.actTime = nil
osf3status.lvStickannouncement = false
osf3status.maxminFinals1 = nil
osf3status.maxminFinals2 = nil
osf3status.maxminFinals3 = nil
osf3status.maxminFinals4 = nil
osf3status.maxminFinals5 = nil
osf3status.maxminFinals6 = nil
osf3status.maxminFinals7 = nil
osf3status.maxminFinals8 = nil
osf3status.oldADJSOURCE = 0
osf3status.oldADJVALUE = 0
osf3status.adjfuncIdChanged = false
osf3status.adjfuncValueChanged = false
osf3status.adjJUSTUP = false
osf3status.ADJSOURCE = nil
osf3status.ADJVALUE = nil
osf3status.noTelemTimer = 0
osf3status.closeButtonX = 0
osf3status.closeButtonY = 0
osf3status.closeButtonW = 0
osf3status.closeButtonH = 0
osf3status.adjTimerStart = os.time()
osf3status.adjJUSTUPCounter = 0
osf3status.sensorVoltageMax = 0
osf3status.sensorVoltageMin = 0
osf3status.sensorFuelMin = 0
osf3status.sensorFuelMax = 0
osf3status.sensorRPMMin = 0
osf3status.sensorRPMMax = 0
osf3status.sensorCurrentMin = 0
osf3status.sensorCurrentMax = 0
osf3status.sensorTempMCUMin = 0
osf3status.sensorTempMCUMax = 0
osf3status.sensorTempESCMin = 0
osf3status.sensorTempESCMax = 0
osf3status.sensorRSSIMin = 0
osf3status.sensorRSSIMax = 0
osf3status.lastMaxMin = 0
osf3status.wakeupSchedulerUI = os.clock()
osf3status.voltageNoiseQ = 100
osf3status.fuelNoiseQ = 100
osf3status.rpmNoiseQ = 100
osf3status.temp_mcuNoiseQ = 100
osf3status.temp_escNoiseQ = 100
osf3status.rssiNoiseQ = 100
osf3status.currentNoiseQ = 100
osf3status.i8n = assert(loadfile("i8n/" .. system.getLocale() .. ".lua"))()
osf3status.layoutOptions = {
    {osf3status.i8n.TIMER, 1}, {osf3status.i8n.VOLTAGE, 2}, {osf3status.i8n.FUEL, 3}, {osf3status.i8n.CURRENT, 4}, {osf3status.i8n.MAH, 17}, {osf3status.i8n.RPM, 5}, {osf3status.i8n.LQ, 6},
    {osf3status.i8n.TESC, 7}, {osf3status.i8n.TMCU, 8}, {osf3status.i8n.IMAGE, 9}, {osf3status.i8n.GOVERNOR, 10}, {osf3status.i8n.IMAGEGOVERNOR, 11}, {osf3status.i8n.LQTIMER, 12},
    {osf3status.i8n.TESCTMCU, 13}, {osf3status.i8n.VOLTAGEFUEL, 14}, {osf3status.i8n.VOLTAGECURRENT, 15}, {osf3status.i8n.VOLTAGEMAH, 16}, {osf3status.i8n.LQTIMERTESCTMCU, 20},
    {osf3status.i8n.MAXCURRENT, 21}, {osf3status.i8n.LQGOVERNOR, 22}
}
osf3status.layoutBox1Param = 11 -- IMAGE, GOV
osf3status.layoutBox2Param = 2 -- VOLTAGE
osf3status.layoutBox3Param = 3 -- FUEL
osf3status.layoutBox4Param = 12 -- LQ,TIMER
osf3status.layoutBox5Param = 4 -- CURRENT
osf3status.layoutBox6Param = 5 -- RPM
osf3status.adjfunctions = {
    -- rates
    id5 = {name = "Pitch Rate", wavs = {"pitch", "rate"}},
    id6 = {name = "Roll Rate", wavs = {"roll", "rate"}},
    id7 = {name = "Yaw Rate", wavs = {"yaw", "rate"}},
    id8 = {name = "Pitch RC Rate", wavs = {"pitch", "rc", "rate"}},
    id9 = {name = "Roll RC Rate", wavs = {"roll", "rc", "rate"}},
    id10 = {name = "Yaw RC Rate", wavs = {"yaw", "rc", "rate"}},
    id11 = {name = "Pitch RC Expo", wavs = {"pitch", "rc", "expo"}},
    id12 = {name = "Roll RC Expo", wavs = {"roll", "rc", "expo"}},
    id13 = {name = "Yaw RC Expo", wavs = {"yaw", "rc", "expo"}},

    -- pids
    id14 = {name = "Pitch P Gain", wavs = {"pitch", "p", "gain"}},
    id15 = {name = "Pitch I Gain", wavs = {"pitch", "i", "gain"}},
    id16 = {name = "Pitch D Gain", wavs = {"pitch", "d", "gain"}},
    id17 = {name = "Pitch F Gain", wavs = {"pitch", "f", "gain"}},
    id18 = {name = "Roll P Gain", wavs = {"roll", "p", "gain"}},
    id19 = {name = "Roll I Gain", wavs = {"roll", "i", "gain"}},
    id20 = {name = "Roll D Gain", wavs = {"roll", "d", "gain"}},
    id21 = {name = "Roll F Gain", wavs = {"roll", "f", "gain"}},
    id22 = {name = "Yaw P Gain", wavs = {"yaw", "p", "gain"}},
    id23 = {name = "Yaw I Gain", wavs = {"yaw", "i", "gain"}},
    id24 = {name = "Yaw D Gain", wavs = {"yaw", "d", "gain"}},
    id25 = {name = "Yaw F Gain", wavs = {"yaw", "f", "gain"}},

    id26 = {name = "Yaw CW Gain", wavs = {"yaw", "cw", "gain"}},
    id27 = {name = "Yaw CCW Gain", wavs = {"yaw", "ccw", "gain"}},
    id28 = {name = "Yaw Cyclic FF", wavs = {"yaw", "cyclic", "ff"}},
    id29 = {name = "Yaw Coll FF", wavs = {"yaw", "collective", "ff"}},
    id30 = {name = "Yaw Coll Dyn", wavs = {"yaw", "collective", "dyn"}},
    id31 = {name = "Yaw Coll Decay", wavs = {"yaw", "collective", "decay"}},
    id32 = {name = "Pitch Coll FF", wavs = {"pitch", "collective", "ff"}},

    -- gyro cutoffs
    id33 = {name = "Pitch Gyro Cutoff", wavs = {"pitch", "gyro", "cutoff"}},
    id34 = {name = "Roll Gyro Cutoff", wavs = {"roll", "gyro", "cutoff"}},
    id35 = {name = "Yaw Gyro Cutoff", wavs = {"yaw", "gyro", "cutoff"}},

    -- dterm cutoffs
    id36 = {name = "Pitch D-term Cutoff", wavs = {"pitch", "dterm", "cutoff"}},
    id37 = {name = "Roll D-term Cutoff", wavs = {"roll", "dterm", "cutoff"}},
    id38 = {name = "Yaw D-term Cutoff", wavs = {"yaw", "dterm", "cutoff"}},

    -- rescue
    id39 = {name = "Rescue Climb Coll", wavs = {"rescue", "climb", "collective"}},
    id40 = {name = "Rescue Hover Coll", wavs = {"rescue", "hover", "collective"}},
    id41 = {name = "Rescue Hover Alt", wavs = {"rescue", "hover", "alt"}},
    id42 = {name = "Rescue Alt P Gain", wavs = {"rescue", "alt", "p", "gain"}},
    id43 = {name = "Rescue Alt I Gain", wavs = {"rescue", "alt", "i", "gain"}},
    id44 = {name = "Rescue Alt D Gain", wavs = {"rescue", "alt", "d", "gain"}},

    -- leveling
    id45 = {name = "Angle Level Gain", wavs = {"angle", "level", "gain"}},
    id46 = {name = "Horizon Level Gain", wavs = {"horizon", "level", "gain"}},
    id47 = {name = "Acro Trainer Gain", wavs = {"acro", "gain"}},

    -- governor
    id48 = {name = "Governor Gain", wavs = {"gov", "gain"}},
    id49 = {name = "Governor P Gain", wavs = {"gov", "p", "gain"}},
    id50 = {name = "Governor I Gain", wavs = {"gov", "i", "gain"}},
    id51 = {name = "Governor D Gain", wavs = {"gov", "d", "gain"}},
    id52 = {name = "Governor F Gain", wavs = {"gov", "f", "gain"}},
    id53 = {name = "Governor TTA Gain", wavs = {"gov", "tta", "gain"}},
    id54 = {name = "Governor Cyclic FF", wavs = {"gov", "cyclic", "ff"}},
    id55 = {name = "Governor Coll FF", wavs = {"gov", "collective", "ff"}},

    -- boost gains
    id56 = {name = "Pitch B Gain", wavs = {"pitch", "b", "gain"}},
    id57 = {name = "Roll B Gain", wavs = {"roll", "b", "gain"}},
    id58 = {name = "Yaw B Gain", wavs = {"yaw", "b", "gain"}},

    -- offset gains
    id59 = {name = "Pitch O Gain", wavs = {"pitch", "o", "gain"}},
    id60 = {name = "Roll O Gain", wavs = {"roll", "o", "gain"}},

    -- cross-coupling
    id61 = {name = "Cross Coup Gain", wavs = {"crossc", "gain"}},
    id62 = {name = "Cross Coup Ratio", wavs = {"crossc", "ratio"}},
    id63 = {name = "Cross Coup Cutoff", wavs = {"crossc", "cutoff"}}
}

function osf3status.create(widget)
    osf3status.gfx_model = lcd.loadBitmap(model.bitmap())
    osf3status.gfx_heli = lcd.loadBitmap("gfx/heli.png")
    osf3status.gfx_close = lcd.loadBitmap("gfx/close.png")
    osf3status.rssiSensor = osf3status.getRssiSensor()

    if tonumber(osf3status.sensorMakeNumber(environment.version)) < 159 then
        osf3status.screenError("ETHOS < V1.5.9")
        return
    end

    return {
        fmsrc = 0,
        btype = 0,
        lowfuel = 20,
        alertint = 5,
        alrthptc = 1,
        maxmin = 1,
        title = 1,
        cells = 6,
        announcementswitchvltg = nil,
        govmode = 0,
        governoralerts = 0,
        rpmalerts = 0,
        rpmaltp = 2.5,
        adjfunc = 0,
        announcementswitchrpm = nil,
        announcementswitchcrnt = nil,
        announcementswitchfuel = nil,
        announcementswitchlq = nil,
        announcementswitchesc = nil,
        announcementswitchmcu = nil,
        announcementswitchtmr = nil,
        filtering = 1,
        sag = 5,
        lvsense = 2,
        announcementint = 30,
        lvgovernor = false,
        lvstickmon = 0,
        lvstickcutoff = 1,
        governorUNKNOWN = true,
        governorDISARMED = true,
        governorDISABLED = true,
        governorBAILOUT = true,
        governorAUTOROT = true,
        governorLOSTHS = true,
        governorTHROFF = true,
        governorACTIVE = true,
        governorRECOVERY = true,
        governorSPOOLUP = true,
        governorIDLE = true,
        governorOFF = true,
        alerton = 0,
        tempconvertesc = 1
    }
end

function osf3status.configure(widget)
    osf3status.isInConfiguration = true

    triggerpanel = form.addExpansionPanel(osf3status.i8n.Triggers)
    triggerpanel:open(false)

    line = triggerpanel:addLine(osf3status.i8n.Armswitch)
    armswitch = form.addSwitchField(line, form.getFieldSlots(line)[0], function()
        return armswitchParam
    end, function(value)
        armswitchParam = value
    end)

    line = triggerpanel:addLine(osf3status.i8n.Idleupswitch)
    idleupswitch = form.addSwitchField(line, form.getFieldSlots(line)[0], function()
        return osf3status.idleupswitchParam
    end, function(value)
        osf3status.idleupswitchParam = value
    end)

    line = triggerpanel:addLine("    " .. osf3status.i8n.Delaybeforeactive)
    field = form.addNumberField(line, nil, 5, 60, function()
        return osf3status.idleupdelayParam
    end, function(value)
        osf3status.idleupdelayParam = value
    end)
    field:default(5)
    field:suffix("s")

    timerpanel = form.addExpansionPanel(osf3status.i8n.Timerconfiguration)
    timerpanel:open(false)

    timeTable = {
        {osf3status.i8n.Disabled, 0}, {"00:30", 30}, {"01:00", 60}, {"01:30", 90}, {"02:00", 120}, {"02:30", 150}, {"03:00", 180}, {"03:30", 210}, {"04:00", 240}, {"04:30", 270}, {"05:00", 300},
        {"05:30", 330}, {"06:00", 360}, {"06:30", 390}, {"07:00", 420}, {"07:30", 450}, {"08:00", 480}, {"08:30", 510}, {"09:00", 540}, {"09:30", 570}, {"10:00", 600}, {"10:30", 630}, {"11:00", 660},
        {"11:30", 690}, {"12:00", 720}, {"12:30", 750}, {"13:00", 780}, {"13:30", 810}, {"14:00", 840}, {"14:30", 870}, {"15:00", 900}, {"15:30", 930}, {"16:00", 960}, {"16:30", 990}, {"17:00", 1020},
        {"17:30", 1050}, {"18:00", 1080}, {"18:30", 1110}, {"19:00", 1140}, {"19:30", 1170}, {"20:00", 1200}
    }

    line = timerpanel:addLine(osf3status.i8n.Playalarmat)
    form.addChoiceField(line, nil, timeTable, function()
        return osf3status.timeralarmParam
    end, function(newValue)
        osf3status.timeralarmParam = newValue
    end)

    line = timerpanel:addLine(osf3status.i8n.Vibrate)
    form.addBooleanField(line, nil, function()
        return osf3status.timeralarmVibrateParam
    end, function(newValue)
        osf3status.timeralarmVibrateParam = newValue
    end)

    batterypanel = form.addExpansionPanel(osf3status.i8n.Batteryconfiguration)
    batterypanel:open(false)

    -- CELLS

    line = batterypanel:addLine(osf3status.i8n.Type)
    form.addChoiceField(line, nil, {{osf3status.i8n.LiPo, 0}, {osf3status.i8n.LiHv, 1}, {osf3status.i8n.Lion, 2}, {osf3status.i8n.LiFe, 3}, {osf3status.i8n.NiMh, 4}}, function()
        return osf3status.btypeParam
    end, function(newValue)
        osf3status.btypeParam = newValue
    end)

    -- BATTERY CELLS
    line = batterypanel:addLine(osf3status.i8n.Cells)
    field = form.addNumberField(line, nil, 0, 14, function()
        return osf3status.cellsParam
    end, function(value)
        osf3status.cellsParam = value
    end)
    field:default(6)

    -- LOW FUEL announcement
    line = batterypanel:addLine(osf3status.i8n.Lowfuelpercentage)
    field = form.addNumberField(line, nil, 0, 50, function()
        return osf3status.lowfuelParam
    end, function(value)
        osf3status.lowfuelParam = value
    end)
    field:default(20)
    field:suffix("%")

    -- ALERT ON
    line = batterypanel:addLine(osf3status.i8n.Playalerton)
    form.addChoiceField(line, nil, {{osf3status.i8n.Lowvoltage, 0}, {osf3status.i8n.Lowfuel, 1}, {osf3status.i8n.LowfuelLowvoltage, 2}, {osf3status.i8n.Disabled, 3}}, function()
        return osf3status.alertonParam
    end, function(newValue)
        if newValue == 3 then
            plalrtint:enable(false)
            plalrthap:enable(false)
        else
            plalrtint:enable(true)
            plalrthap:enable(true)
        end
        osf3status.alertonParam = newValue
    end)

    -- ALERT INTERVAL
    line = batterypanel:addLine("     " .. osf3status.i8n.Interval)
    plalrtint = form.addChoiceField(line, nil, {{"5S", 5}, {"10S", 10}, {"15S", 15}, {"20S", 20}, {"30S", 30}}, function()
        return osf3status.alertintParam
    end, function(newValue)
        osf3status.alertintParam = newValue
    end)
    if osf3status.alertonParam == 3 then
        plalrtint:enable(false)
    else
        plalrtint:enable(true)
    end

    -- HAPTIC
    line = batterypanel:addLine("     " .. osf3status.i8n.Vibrate)
    plalrthap = form.addBooleanField(line, nil, function()
        return osf3status.alrthptParam
    end, function(newValue)
        osf3status.alrthptParam = newValue
    end)
    if osf3status.alertonParam == 3 then
        plalrthap:enable(false)
    else
        plalrthap:enable(true)
    end

    switchpanel = form.addExpansionPanel(osf3status.i8n.Switchannouncements)
    switchpanel:open(false)

    line = switchpanel:addLine(osf3status.i8n.Idlespeedlow)
    form.addSwitchField(line, nil, function()
        return osf3status.switchIdlelowParam
    end, function(value)
        osf3status.switchIdlelowParam = value
    end)

    line = switchpanel:addLine(osf3status.i8n.Idlespeedmedium)
    form.addSwitchField(line, nil, function()
        return osf3status.switchIdlemediumParam
    end, function(value)
        osf3status.switchIdlemediumParam = value
    end)

    line = switchpanel:addLine(osf3status.i8n.Idlespeedhigh)
    form.addSwitchField(line, nil, function()
        return osf3status.switchIdlehighParam
    end, function(value)
        osf3status.switchIdlehighParam = value
    end)

    line = switchpanel:addLine(osf3status.i8n.Rateslow)
    form.addSwitchField(line, nil, function()
        return osf3status.switchrateslowParam
    end, function(value)
        osf3status.switchrateslowParam = value
    end)

    line = switchpanel:addLine(osf3status.i8n.Ratesmedium)
    form.addSwitchField(line, nil, function()
        return osf3status.switchratesmediumParam
    end, function(value)
        osf3status.switchratesmediumParam = value
    end)

    line = switchpanel:addLine(osf3status.i8n.Rateshigh)
    form.addSwitchField(line, nil, function()
        return osf3status.switchrateshighParam
    end, function(value)
        osf3status.switchrateshighParam = value
    end)

    line = switchpanel:addLine(osf3status.i8n.Rescueon)
    form.addSwitchField(line, nil, function()
        return osf3status.switchrescueonParam
    end, function(value)
        osf3status.switchrescueonParam = value
    end)

    line = switchpanel:addLine(osf3status.i8n.Rescueoff)
    form.addSwitchField(line, nil, function()
        return osf3status.switchrescueoffParam
    end, function(value)
        osf3status.switchrescueoffParam = value
    end)

    line = switchpanel:addLine(osf3status.i8n.BBLenabled)
    form.addSwitchField(line, nil, function()
        return osf3status.switchbblonParam
    end, function(value)
        osf3status.switchbblonParam = value
    end)

    line = switchpanel:addLine(osf3status.i8n.BBLdisabled)
    form.addSwitchField(line, nil, function()
        return osf3status.switchbbloffParam
    end, function(value)
        osf3status.switchbbloffParam = value
    end)

    announcementpanel = form.addExpansionPanel(osf3status.i8n.Telemetryannouncements)
    announcementpanel:open(false)

    -- announcement VOLTAGE READING
    line = announcementpanel:addLine(osf3status.i8n.Voltage)
    form.addSwitchField(line, form.getFieldSlots(line)[0], function()
        return osf3status.announcementVoltageSwitchParam
    end, function(value)
        osf3status.announcementVoltageSwitchParam = value
    end)

    -- announcement RPM READING
    line = announcementpanel:addLine(osf3status.i8n.Rpm)
    form.addSwitchField(line, nil, function()
        return osf3status.announcementRPMSwitchParam
    end, function(value)
        osf3status.announcementRPMSwitchParam = value
    end)

    -- announcement CURRENT READING
    line = announcementpanel:addLine(osf3status.i8n.Current)
    form.addSwitchField(line, nil, function()
        return osf3status.announcementCurrentSwitchParam
    end, function(value)
        osf3status.announcementCurrentSwitchParam = value
    end)

    -- announcement FUEL READING
    line = announcementpanel:addLine(osf3status.i8n.Fuel)
    form.addSwitchField(line, form.getFieldSlots(line)[0], function()
        return osf3status.announcementFuelSwitchParam
    end, function(value)
        osf3status.announcementFuelSwitchParam = value
    end)

    -- announcement LQ READING
    line = announcementpanel:addLine(osf3status.i8n.LQ)
    form.addSwitchField(line, form.getFieldSlots(line)[0], function()
        return osf3status.announcementLQSwitchParam
    end, function(value)
        osf3status.announcementLQSwitchParam = value
    end)

    -- announcement LQ READING
    line = announcementpanel:addLine(osf3status.i8n.Esctemperature)
    form.addSwitchField(line, form.getFieldSlots(line)[0], function()
        return osf3status.announcementESCSwitchParam
    end, function(value)
        osf3status.announcementESCSwitchParam = value
    end)

    -- announcement MCU READING
    line = announcementpanel:addLine(osf3status.i8n.Mcutemperature)
    form.addSwitchField(line, form.getFieldSlots(line)[0], function()
        return osf3status.announcementMCUSwitchParam
    end, function(value)
        osf3status.announcementMCUSwitchParam = value
    end)

    -- announcement TIMER READING
    line = announcementpanel:addLine(osf3status.i8n.Timer)
    form.addSwitchField(line, form.getFieldSlots(line)[0], function()
        return osf3status.announcementTimerSwitchParam
    end, function(value)
        osf3status.announcementTimerSwitchParam = value
    end)

    govalertpanel = form.addExpansionPanel(osf3status.i8n.Governorannouncements)
    govalertpanel:open(false)

    -- TITLE DISPLAY
    line = govalertpanel:addLine("  " .. osf3status.i8n.OFF)
    form.addBooleanField(line, nil, function()
        return osf3status.governorOFFParam
    end, function(newValue)
        osf3status.governorOFFParam = newValue
    end)

    -- TITLE DISPLAY
    line = govalertpanel:addLine("  " .. osf3status.i8n.IDLE)
    form.addBooleanField(line, nil, function()
        return osf3status.governorIDLEParam
    end, function(newValue)
        osf3status.governorIDLEParam = newValue
    end)

    -- TITLE DISPLAY
    line = govalertpanel:addLine("  " .. osf3status.i8n.SPOOLUP)
    form.addBooleanField(line, nil, function()
        return osf3status.governorSPOOLUPParam
    end, function(newValue)
        osf3status.governorSPOOLUPParam = newValue
    end)

    line = govalertpanel:addLine("  " .. osf3status.i8n.RECOVERY)
    form.addBooleanField(line, nil, function()
        return osf3status.governorRECOVERYParam
    end, function(newValue)
        osf3status.governorRECOVERYParam = newValue
    end)

    line = govalertpanel:addLine("  " .. osf3status.i8n.ACTIVE)
    form.addBooleanField(line, nil, function()
        return osf3status.governorACTIVEParam
    end, function(newValue)
        osf3status.governorACTIVEParam = newValue
    end)

    line = govalertpanel:addLine("  " .. osf3status.i8n.THROFF)
    form.addBooleanField(line, nil, function()
        return osf3status.governorTHROFFParam
    end, function(newValue)
        osf3status.governorTHROFFParam = newValue
    end)

    line = govalertpanel:addLine("  " .. osf3status.i8n.LOSTHS)
    form.addBooleanField(line, nil, function()
        return osf3status.governorLOSTHSParam
    end, function(newValue)
        osf3status.governorLOSTHSParam = newValue
    end)

    line = govalertpanel:addLine("  " .. osf3status.i8n.AUTOROT)
    form.addBooleanField(line, nil, function()
        return osf3status.governorAUTOROTParam
    end, function(newValue)
        osf3status.governorAUTOROTParam = newValue
    end)

    line = govalertpanel:addLine("  " .. osf3status.i8n.BAILOUT)
    form.addBooleanField(line, nil, function()
        return osf3status.governorBAILOUTParam
    end, function(newValue)
        osf3status.governorBAILOUTParam = newValue
    end)

    line = govalertpanel:addLine("  " .. osf3status.i8n.DISABLED)
    form.addBooleanField(line, nil, function()
        return osf3status.governorDISABLEDParam
    end, function(newValue)
        osf3status.governorDISABLEDParam = newValue
    end)

    line = govalertpanel:addLine("  " .. osf3status.i8n.DISARMED)
    form.addBooleanField(line, nil, function()
        return osf3status.governorDISARMEDParam
    end, function(newValue)
        osf3status.governorDISARMEDParam = newValue
    end)

    line = govalertpanel:addLine("   " .. osf3status.i8n.UNKNOWN)
    form.addBooleanField(line, nil, function()
        return osf3status.governorUNKNOWNParam
    end, function(newValue)
        osf3status.governorUNKNOWNParam = newValue
    end)

    displaypanel = form.addExpansionPanel(osf3status.i8n.Customisedisplay)
    displaypanel:open(false)

    line = displaypanel:addLine(osf3status.i8n.Box1)
    form.addChoiceField(line, nil, osf3status.layoutOptions, function()
        return osf3status.layoutBox1Param
    end, function(newValue)
        osf3status.layoutBox1Param = newValue
    end)

    line = displaypanel:addLine(osf3status.i8n.Box2)
    form.addChoiceField(line, nil, osf3status.layoutOptions, function()
        return osf3status.layoutBox2Param
    end, function(newValue)
        osf3status.layoutBox2Param = newValue
    end)

    line = displaypanel:addLine(osf3status.i8n.Box3)
    form.addChoiceField(line, nil, osf3status.layoutOptions, function()
        return osf3status.layoutBox3Param
    end, function(newValue)
        osf3status.layoutBox3Param = newValue
    end)

    line = displaypanel:addLine(osf3status.i8n.Box4)
    form.addChoiceField(line, nil, osf3status.layoutOptions, function()
        return osf3status.layoutBox4Param
    end, function(newValue)
        osf3status.layoutBox4Param = newValue
    end)

    line = displaypanel:addLine(osf3status.i8n.Box5)
    form.addChoiceField(line, nil, osf3status.layoutOptions, function()
        return osf3status.layoutBox5Param
    end, function(newValue)
        osf3status.layoutBox5Param = newValue
    end)

    line = displaypanel:addLine(osf3status.i8n.Box6)
    form.addChoiceField(line, nil, osf3status.layoutOptions, function()
        return osf3status.layoutBox6Param
    end, function(newValue)
        osf3status.layoutBox6Param = newValue
    end)

    -- TITLE DISPLAY
    line = displaypanel:addLine(osf3status.i8n.Displaytitle)
    form.addBooleanField(line, nil, function()
        return osf3status.titleParam
    end, function(newValue)
        osf3status.titleParam = newValue
    end)

    -- MAX MIN DISPLAY
    line = displaypanel:addLine(osf3status.i8n.Displaymaxmin)
    form.addBooleanField(line, nil, function()
        return osf3status.maxminParam
    end, function(newValue)
        osf3status.maxminParam = newValue
    end)

    -- color mode
    line = displaypanel:addLine(osf3status.i8n.statusColor)
    form.addBooleanField(line, nil, function()
        return osf3status.statusColorParam
    end, function(newValue)
        osf3status.statusColorParam = newValue
    end)    


    advpanel = form.addExpansionPanel(osf3status.i8n.Advanced)
    advpanel:open(false)

  --  line = advpanel:addLine(osf3status.i8n.Governor)
  --  extgov = form.addChoiceField(line, nil, {{osf3status.i8n.RFGovernor, 0}, {osf3status.i8n.ExternalGovernor, 1}}, function()
  --      return osf3status.govmodeParam
  --  end, function(newValue)
  --      osf3status.govmodeParam = newValue
  --  end)

    line = form.addLine(osf3status.i8n.Temperatureconversion, advpanel)

    line = advpanel:addLine("    " .. osf3status.i8n.ESC)
    form.addChoiceField(line, nil, {{osf3status.i8n.Disable, 1}, {"°C -> °F", 2}, {"°F -> °C", 3}}, function()
        return osf3status.tempconvertParamESC
    end, function(newValue)
        osf3status.tempconvertParamESC = newValue
    end)

    line = advpanel:addLine("   " .. osf3status.i8n.MCU)
    form.addChoiceField(line, nil, {{osf3status.i8n.Disable, 1}, {"°C -> °F", 2}, {"°F -> °C", 3}}, function()
        return osf3status.tempconvertParamMCU
    end, function(newValue)
        osf3status.tempconvertParamMCU = newValue
    end)

    line = form.addLine(osf3status.i8n.Voltage, advpanel)

    -- LVannouncement DISPLAY
    line = advpanel:addLine("    " .. osf3status.i8n.Sensitivity)
    form.addChoiceField(line, nil, {{osf3status.i8n.HIGH, 1}, {osf3status.i8n.MEDIUM, 2}, {osf3status.i8n.LOW, 3}}, function()
        return osf3status.lowvoltagsenseParam
    end, function(newValue)
        osf3status.lowvoltagsenseParam = newValue
    end)

    line = advpanel:addLine("    " .. osf3status.i8n.Sagcompensation)
    field = form.addNumberField(line, nil, 0, 10, function()
        return osf3status.sagParam
    end, function(value)
        osf3status.sagParam = value
    end)
    field:default(5)
    field:suffix("s")
    -- field:decimals(1)

    -- LVSTICK MONITORING
    line = advpanel:addLine("    " .. osf3status.i8n.Gimbalmonitoring)
    form.addChoiceField(line, nil, {
        {osf3status.i8n.DISABLED, 0}, -- recomended
        {"AECR1T23 (ELRS)", 1}, -- recomended
        {"AETRC123 (FRSKY)", 2}, -- frsky
        {"AETR1C23 (FUTABA)", 3}, -- fut/hitec
        {"TAER1C23 (SPEKTRUM)", 4} -- spec
    }, function()
        return osf3status.lowvoltagStickParam
    end, function(newValue)
        if newValue == 0 then
            fieldstckcutoff:enable(false)
        else
            fieldstckcutoff:enable(true)
        end
        osf3status.lowvoltagStickParam = newValue
    end)

    line = advpanel:addLine("       " .. osf3status.i8n.Stickcutoff)
    fieldstckcutoff = form.addNumberField(line, nil, 65, 95, function()
        return osf3status.lowvoltagStickCutoffParam
    end, function(value)
        osf3status.lowvoltagStickCutoffParam = value
    end)
    fieldstckcutoff:default(80)
    fieldstckcutoff:suffix("%")
    if osf3status.lowvoltagStickParam == 0 then
        fieldstckcutoff:enable(false)
    else
        fieldstckcutoff:enable(true)
    end

    line = form.addLine(osf3status.i8n.Headspeed, advpanel)

    -- TITLE DISPLAY
    line = advpanel:addLine("   " .. osf3status.i8n.AlertonRPMdifference)
    form.addBooleanField(line, nil, function()
        return osf3status.rpmAlertsParam
    end, function(newValue)
        if newValue == false then
            rpmperfield:enable(false)
        else
            rpmperfield:enable(true)
        end

        osf3status.rpmAlertsParam = newValue
    end)

    -- TITLE DISPLAY
    line = advpanel:addLine("   " .. osf3status.i8n.Alertifdifferencegtthan)
    rpmperfield = form.addNumberField(line, nil, 0, 200, function()
        return osf3status.rpmAlertsPercentageParam
    end, function(value)
        osf3status.rpmAlertsPercentageParam = value
    end)
    if osf3status.rpmAlertsParam == false then
        rpmperfield:enable(false)
    else
        rpmperfield:enable(true)
    end
    rpmperfield:default(100)
    rpmperfield:decimals(1)
    rpmperfield:suffix("%")

    -- FILTER
    -- MAX MIN DISPLAY
    line = advpanel:addLine(osf3status.i8n.Telemetryfiltering)
    form.addChoiceField(line, nil, {{osf3status.i8n.LOW, 1}, {osf3status.i8n.MEDIUM, 2}, {osf3status.i8n.HIGH, 3}}, function()
        return osf3status.filteringParam
    end, function(newValue)
        osf3status.filteringParam = newValue
    end)

    -- LVannouncement DISPLAY
    line = advpanel:addLine(osf3status.i8n.Announcementinterval)
    form.addChoiceField(line, nil, {
        {"5s", 5}, {"10s", 10}, {"15s", 15}, {"20s", 20}, {"25s", 25}, {"30s", 30}, {"35s", 35}, {"40s", 40}, {"45s", 45}, {"50s", 50}, {"55s", 55}, {"60s", 60}, {osf3status.i8n.Norepeat, 50000}
    }, function()
        return osf3status.announcementIntervalParam
    end, function(newValue)
        osf3status.announcementIntervalParam = newValue
    end)


    -- calcfuel
    line = advpanel:addLine(osf3status.i8n.Calcfuellocally)
    form.addBooleanField(line, nil, function()
        return osf3status.calcfuelParam
    end, function(newValue)
        osf3status.calcfuelParam = newValue
    end)
    
    osf3status.resetALL()

    return widget
end

function osf3status.getRssiSensor()
    if environment.simulation then return 100 end

    local rssiNames = {"RSSI", "RSSI 2.4G", "RSSI 900M", "Rx RSSI1", "Rx RSSI2", "RSSI Int", "RSSI Ext"}
    for i, name in ipairs(rssiNames) do
        osf3status.rssiSensor = system.getSource(name)
        if osf3status.rssiSensor then return osf3status.rssiSensor end
    end
end

function osf3status.getRSSI()
    if environment.simulation == true then return 100 end
    if osf3status.rssiSensor ~= nil and osf3status.rssiSensor:state() then return osf3status.rssiSensor:value() end
    return 0
end

function osf3status.screenError(msg)
    local w, h = lcd.getWindowSize()
    osf3status.isDARKMODE = lcd.darkMode()
    lcd.font(FONT_STD)
    str = msg
    tsizeW, tsizeH = lcd.getTextSize(str)

    if osf3status.isDARKMODE then
        -- dark theme
        lcd.color(lcd.RGB(255, 255, 255, 1))
    else
        -- light theme
        lcd.color(lcd.RGB(90, 90, 90))
    end
    lcd.drawText((w / 2) - tsizeW / 2, (h / 2) - tsizeH / 2, str)
    return
end

function osf3status.resetALL()
    osf3status.showLOGS = false
    osf3status.sensorVoltageMax = 0
    osf3status.sensorVoltageMin = 0
    osf3status.sensorFuelMin = 0
    osf3status.sensorFuelMax = 0
    osf3status.sensorRPMMin = 0
    osf3status.sensorRPMMax = 0
    osf3status.sensorCurrentMin = 0
    osf3status.sensorCurrentMax = 0
    osf3status.sensorTempMCUMin = 0
    osf3status.sensorTempMCUMax = 0
    osf3status.sensorTempESCMin = 0
    osf3status.sensorTempESCMax = 0
end

function osf3status.noTelem()

    lcd.font(FONT_STD)
    str = osf3status.i8n.NODATA

    osf3status.theme = osf3status.getThemeInfo()
    local w, h = lcd.getWindowSize()
    boxW = math.floor(w / 2)
    boxH = 45
    tsizeW, tsizeH = lcd.getTextSize(str)

    -- draw the backgosf3status.round
    if osf3status.isDARKMODE then
        lcd.color(lcd.RGB(40, 40, 40))
    else
        lcd.color(lcd.RGB(240, 240, 240))
    end
    lcd.drawFilledRectangle(w / 2 - boxW / 2, h / 2 - boxH / 2, boxW, boxH)

    -- draw the border
    if osf3status.isDARKMODE then
        -- dark theme
        lcd.color(lcd.RGB(255, 255, 255, 1))
    else
        -- light theme
        lcd.color(lcd.RGB(90, 90, 90))
    end
    lcd.drawRectangle(w / 2 - boxW / 2, h / 2 - boxH / 2, boxW, boxH)

    if osf3status.isDARKMODE then
        -- dark theme
        lcd.color(lcd.RGB(255, 255, 255, 1))
    else
        -- light theme
        lcd.color(lcd.RGB(90, 90, 90))
    end
    lcd.drawText((w / 2) - tsizeW / 2, (h / 2) - tsizeH / 2, str)
    return
end

function osf3status.getThemeInfo()
    environment = system.getVersion()
    local w, h = lcd.getWindowSize()

    -- this is just to force height calc to end up on whole numbers to avoid
    -- scaling issues
    h = (math.floor((h / 4)) * 4)
    w = (math.floor((w / 6)) * 6)

    -- first one is unsporrted

    if environment.board == "XES" or environment.board == "XE" or environment.board == "X20" or environment.board == "X20S" or environment.board == "X20PRO" or environment.board == "X20PROAW" or
        environment.board == "X20R" or environment.board == "X20RS" then
        ret = {
            supportedRADIO = true,
            colSpacing = 4,
            fullBoxW = 262,
            fullBoxH = h / 2,
            smallBoxSensortextOFFSET = -5,
            title_voltage = osf3status.i8n.VOLTAGE,
            title_fuel = osf3status.i8n.FUEL,
            title_mah = osf3status.i8n.MAH,
            title_rpm = osf3status.i8n.RPM,
            title_current = osf3status.i8n.CURRENT,
            title_tempMCU = osf3status.i8n.MCU,
            title_tempESC = osf3status.i8n.ESC,
            title_time = osf3status.i8n.TIMER,
            title_governor = osf3status.i8n.GOVERNOR,
            title_fm = osf3status.i8n.FLIGHTMODE,
            title_rssi = osf3status.i8n.LQ,
            fontSENSOR = FONT_XXL,
            fontSENSORSmallBox = FONT_STD,
            fontTITLE = FONT_XS,
            fontPopupTitle = FONT_S,
            widgetTitleOffset = 20,
            logsCOL1w = 60,
            logsCOL2w = 120,
            logsCOL3w = 120,
            logsCOL4w = 170,
            logsCOL5w = 110,
            logsCOL6w = 90,
            logsCOL7w = 90,
            logsHeaderOffset = 5

        }
    end

    if environment.board == "X18" or environment.board == "X18S" then
        ret = {
            supportedRADIO = true,
            colSpacing = 2,
            fullBoxW = 158,
            fullBoxH = 97,
            smallBoxSensortextOFFSET = -8,
            title_voltage = osf3status.i8n.VOLTAGE,
            title_fuel = osf3status.i8n.FUEL,
            title_mah = osf3status.i8n.MAH,
            title_rpm = osf3status.i8n.RPM,
            title_current = osf3status.i8n.CURRENT,
            title_tempMCU = osf3status.i8n.MCU,
            title_tempESC = osf3status.i8n.ESC,
            title_time = osf3status.i8n.TIMER,
            title_governor = osf3status.i8n.GOVERNOR,
            title_fm = osf3status.i8n.FLIGHTMODE,
            title_rssi = osf3status.i8n.LQ,
            fontSENSOR = FONT_XXL,
            fontSENSORSmallBox = FONT_STD,
            fontTITLE = 768,
            fontPopupTitle = FONT_S,
            widgetTitleOffset = 20,
            logsCOL1w = 50,
            logsCOL2w = 100,
            logsCOL3w = 100,
            logsCOL4w = 140,
            logsCOL5w = 0,
            logsCOL6w = 0,
            logsCOL7w = 75,
            logsHeaderOffset = 5
        }
    end

    if environment.board == "X14" or environment.board == "X14S" then
        ret = {
            supportedRADIO = true,
            colSpacing = 3,
            fullBoxW = 210,
            fullBoxH = 120,
            smallBoxSensortextOFFSET = -10,
            title_voltage = osf3status.i8n.VOLTAGE,
            title_fuel = osf3status.i8n.FUEL,
            title_mah = osf3status.i8n.MAH,
            title_rpm = osf3status.i8n.RPM,
            title_current = osf3status.i8n.CURRENT,
            title_tempMCU = osf3status.i8n.MCU,
            title_tempESC = osf3status.i8n.ESC,
            title_time = osf3status.i8n.TIMER,
            title_governor = osf3status.i8n.GOVERNOR,
            title_fm = osf3status.i8n.FLIGHTMODE,
            title_rssi = osf3status.i8n.LQ,
            fontSENSOR = FONT_XXL,
            fontSENSORSmallBox = FONT_STD,
            fontTITLE = 768,
            fontPopupTitle = FONT_S,
            widgetTitleOffset = 20,
            logsCOL1w = 70,
            logsCOL2w = 140,
            logsCOL3w = 120,
            logsCOL4w = 170,
            logsCOL5w = 0,
            logsCOL6w = 0,
            logsCOL7w = 120,
            logsHeaderOffset = 5
        }
    end

    if environment.board == "TWXLITE" or environment.board == "TWXLITES" then
        ret = {
            supportedRADIO = true,
            colSpacing = 2,
            fullBoxW = 158,
            fullBoxH = 96,
            smallBoxSensortextOFFSET = -10,
            title_voltage = osf3status.i8n.VOLTAGE,
            title_fuel = osf3status.i8n.FUEL,
            title_mah = osf3status.i8n.MAH,
            title_rpm = osf3status.i8n.RPM,
            title_current = osf3status.i8n.CURRENT,
            title_tempMCU = osf3status.i8n.MCU,
            title_tempESC = osf3status.i8n.ESC,
            title_time = osf3status.i8n.TIMER,
            title_governor = osf3status.i8n.GOVERNOR,
            title_fm = osf3status.i8n.FLIGHTMODE,
            title_rssi = osf3status.i8n.LQ,
            fontSENSOR = FONT_XXL,
            fontSENSORSmallBox = FONT_STD,
            fontTITLE = 768,
            fontPopupTitle = FONT_S,
            widgetTitleOffset = 20,
            logsCOL1w = 50,
            logsCOL2w = 100,
            logsCOL3w = 100,
            logsCOL4w = 140,
            logsCOL5w = 0,
            logsCOL6w = 0,
            logsCOL7w = 75,
            logsHeaderOffset = 5
        }
    end

    if environment.board == "X10EXPRESS" or environment.board == "X10" or environment.board == "X10S" or environment.board == "X12" or environment.board == "X12S" then
        ret = {
            supportedRADIO = true,
            colSpacing = 2,
            fullBoxW = 158,
            fullBoxH = 79,
            smallBoxSensortextOFFSET = -10,
            title_voltage = osf3status.i8n.VOLTAGE,
            title_fuel = osf3status.i8n.FUEL,
            title_mah = osf3status.i8n.MAH,
            title_rpm = osf3status.i8n.RPM,
            title_current = osf3status.i8n.CURRENT,
            title_tempMCU = osf3status.i8n.MCU,
            title_tempESC = osf3status.i8n.ESC,
            title_time = osf3status.i8n.TIMER,
            title_governor = osf3status.i8n.GOVERNOR,
            title_fm = osf3status.i8n.FLIGHTMODE,
            title_rssi = osf3status.i8n.LQ,
            fontSENSOR = FONT_XXL,
            fontSENSORSmallBox = FONT_STD,
            fontTITLE = FONT_XS,
            fontPopupTitle = FONT_S,
            widgetTitleOffset = 20,
            logsCOL1w = 50,
            logsCOL2w = 100,
            logsCOL3w = 100,
            logsCOL4w = 140,
            logsCOL5w = 0,
            logsCOL6w = 0,
            logsCOL7w = 75,
            logsHeaderOffset = 5
        }
    end

    return ret
end

function osf3status.govColorFlag(flag)

    -- 0 = default colour
    -- 1 = red (alarm)
    -- 2 = orange (warning)
    -- 3 = green (ok)  
    
    if flag == "UNKNOWN" then
        return 1
    elseif flag == "DISARMED" then
        return 0
    elseif flag == "DISABLED" then
        return 0
    elseif flag == "BAILOUT" then
        return 2
    elseif flag == "AUTOROT" then
        return 2
    elseif flag == "LOST-HS" then
        return 2
    elseif flag == "THR-OFF" then
        return 2
    elseif flag == "ACTIVE" then
        return 3
    elseif flag == "RECOVERY" then
        return 2
    elseif flag == "SPOOLUP" then
        return 2
    elseif flag == "IDLE" then
        return 0
    elseif flag == "OFF" then
        return 0
    end

    return 0
end

function osf3status.telemetryBox(x, y, w, h, title, value, unit, smallbox, alarm, minimum, maximum)

    osf3status.isVisible = lcd.isVisible()
    osf3status.isDARKMODE = lcd.darkMode()
    local theme = osf3status.getThemeInfo()

    if osf3status.isDARKMODE then
        lcd.color(lcd.RGB(40, 40, 40))
    else
        lcd.color(lcd.RGB(240, 240, 240))
    end

    -- draw box backgosf3status.round	
    lcd.drawFilledRectangle(x, y, w, h)

    -- color	
    if osf3status.isDARKMODE then
        lcd.color(lcd.RGB(255, 255, 255, 1))
    else
        lcd.color(lcd.RGB(90, 90, 90))
    end

    -- draw sensor text
    if value ~= nil then

        if smallbox == nil or smallbox == false then
            lcd.font(theme.fontSENSOR)
        else
            lcd.font(theme.fontSENSORSmallBox)
        end

        str = value .. unit

        if unit == "°" then
            tsizeW, tsizeH = lcd.getTextSize(value .. ".")
        else
            tsizeW, tsizeH = lcd.getTextSize(str)
        end

        sx = (x + w / 2) - (tsizeW / 2)
        if smallbox == nil or smallbox == false then
            sy = (y + h / 2) - (tsizeH / 2)
        else
            if osf3status.maxminParam == false and osf3status.titleParam == false then
                sy = (y + h / 2) - (tsizeH / 2)
            else
                sy = (y + h / 2) - (tsizeH / 2) + theme.smallBoxSensortextOFFSET
            end
        end

        -- change text colour to suit alarm flag
        -- 0 = default colour
        -- 1 = red (alarm)
        -- 2 = orange (warning)
        -- 3 = green (ok)  
        if osf3status.statusColorParam == true then
            if alarm == 1 then 
                lcd.color(lcd.RGB(255, 0, 0, 1))   -- red
            elseif alarm == 2 then 
                lcd.color(lcd.RGB(255, 204, 0, 1)) -- orange
            elseif alarm == 3 then 
                lcd.color(lcd.RGB(0, 188, 4, 1))  -- green
            end
        else
            -- we only do red
            if alarm == 1 then 
                lcd.color(lcd.RGB(255, 0, 0, 1))   -- red
            end
        end

        lcd.drawText(sx, sy, str)
 
        -- reset text back from red to ensure max/min stay right color 
        if alarm ~= 0 then
            if osf3status.isDARKMODE then
                lcd.color(lcd.RGB(255, 255, 255, 1))
            else
                lcd.color(lcd.RGB(90, 90, 90))
            end
        end

    end

    if title ~= nil and osf3status.titleParam == true then
        lcd.font(theme.fontTITLE)
        str = title
        tsizeW, tsizeH = lcd.getTextSize(str)

        sx = (x + w / 2) - (tsizeW / 2)
        sy = (y + h) - (tsizeH) - theme.colSpacing

        lcd.drawText(sx, sy, str)
    end

    if osf3status.maxminParam == true then

        if minimum ~= nil then

            lcd.font(theme.fontTITLE)

            if tostring(minimum) ~= "-" then lastMin = minimum end

            if tostring(minimum) == "-" then
                str = minimum
            else
                str = minimum .. unit
            end

            if unit == "°" then
                tsizeW, tsizeH = lcd.getTextSize(minimum .. ".")
            else
                tsizeW, tsizeH = lcd.getTextSize(str)
            end

            sx = (x + theme.colSpacing)
            sy = (y + h) - (tsizeH) - theme.colSpacing

            lcd.drawText(sx, sy, str)
        end

        if maximum ~= nil then
            lcd.font(theme.fontTITLE)

            if tostring(maximum) == "-" then
                str = maximum
            else
                str = maximum .. unit
            end
            if unit == "°" then
                tsizeW, tsizeH = lcd.getTextSize(maximum .. ".")
            else
                tsizeW, tsizeH = lcd.getTextSize(str)
            end

            sx = (x + w) - tsizeW - theme.colSpacing
            sy = (y + h) - (tsizeH) - theme.colSpacing

            lcd.drawText(sx, sy, str)
        end

    end

end

function osf3status.telemetryBoxMAX(x, y, w, h, title, value, unit, smallbox)

    osf3status.isVisible = lcd.isVisible()
    osf3status.isDARKMODE = lcd.darkMode()
    local theme = osf3status.getThemeInfo()

    if osf3status.isDARKMODE then
        lcd.color(lcd.RGB(40, 40, 40))
    else
        lcd.color(lcd.RGB(240, 240, 240))
    end

    -- draw box backgosf3status.round	
    lcd.drawFilledRectangle(x, y, w, h)

    -- color	
    if osf3status.isDARKMODE then
        lcd.color(lcd.RGB(255, 255, 255, 1))
    else
        lcd.color(lcd.RGB(90, 90, 90))
    end

    -- draw sensor text
    if value ~= nil then

        if smallbox == nil or smallbox == false then
            lcd.font(theme.fontSENSOR)
        else
            lcd.font(theme.fontSENSORSmallBox)
        end

        str = value .. unit

        if unit == "°" then
            tsizeW, tsizeH = lcd.getTextSize(value .. ".")
        else
            tsizeW, tsizeH = lcd.getTextSize(str)
        end

        sx = (x + w / 2) - (tsizeW / 2)
        if smallbox == nil or smallbox == false then
            sy = (y + h / 2) - (tsizeH / 2)
        else
            if osf3status.maxminParam == false and osf3status.titleParam == false then
                sy = (y + h / 2) - (tsizeH / 2)
            else
                sy = (y + h / 2) - (tsizeH / 2) + theme.smallBoxSensortextOFFSET
            end
        end

        lcd.drawText(sx, sy, str)

    end

    if title ~= nil and osf3status.titleParam == true then
        lcd.font(theme.fontTITLE)
        str = title
        tsizeW, tsizeH = lcd.getTextSize(str)

        sx = (x + w / 2) - (tsizeW / 2)
        sy = (y + h) - (tsizeH) - theme.colSpacing

        lcd.drawText(sx, sy, str)
    end

end

function osf3status.logsBOX()

    if osf3status.readLOGS == false then
        local history = osf3status.readHistory()
        osf3status.readLOGSlast = history
        osf3status.readLOGS = true
    else
        history = osf3status.readLOGSlast
    end

    local theme = osf3status.getThemeInfo()
    local w, h = lcd.getWindowSize()
    if w < 500 then
        boxW = w
    else
        boxW = w - math.floor((w * 2) / 100)
    end
    if h < 200 then
        boxH = h - 2
    else
        boxH = h - math.floor((h * 4) / 100)
    end

    -- draw the backgosf3status.round
    if osf3status.isDARKMODE then
        lcd.color(lcd.RGB(40, 40, 40, 50))
    else
        lcd.color(lcd.RGB(240, 240, 240, 50))
    end
    lcd.drawFilledRectangle(w / 2 - boxW / 2, h / 2 - boxH / 2, boxW, boxH)

    -- draw the border
    lcd.color(lcd.RGB(248, 176, 56))
    lcd.drawRectangle(w / 2 - boxW / 2, h / 2 - boxH / 2, boxW, boxH)

    -- draw the title
    lcd.color(lcd.RGB(248, 176, 56))
    lcd.drawFilledRectangle(w / 2 - boxW / 2, h / 2 - boxH / 2, boxW, boxH / 9)

    if osf3status.isDARKMODE then
        -- dark theme
        lcd.color(lcd.RGB(0, 0, 0, 1))
    else
        -- light theme
        lcd.color(lcd.RGB(255, 255, 255))
    end
    str = osf3status.i8n.LogHistory
    lcd.font(theme.fontPopupTitle)
    tsizeW, tsizeH = lcd.getTextSize(str)

    boxTh = boxH / 9
    boxTy = h / 2 - boxH / 2
    boxTx = w / 2 - boxW / 2
    lcd.drawText((w / 2) - tsizeW / 2, boxTy + (boxTh / 2) - tsizeH / 2, str)

    -- close button
    lcd.drawBitmap(boxTx + boxW - boxTh, boxTy, osf3status.gfx_close, boxTh, boxTh)
    osf3status.closeButtonX = math.floor(boxTx + boxW - boxTh)
    osf3status.closeButtonY = math.floor(boxTy) + theme.widgetTitleOffset
    osf3status.closeButtonW = math.floor(boxTh)
    osf3status.closeButtonH = math.floor(boxTh)

    lcd.color(lcd.RGB(255, 255, 255))

    --[[ header column format 
		TIME VOLTAGE AMPS RPM LQ MCU ESC
	]] --
    colW = boxW / 7

    col1x = boxTx
    col2x = boxTx + theme.logsCOL1w
    col3x = boxTx + theme.logsCOL1w + theme.logsCOL2w
    col4x = boxTx + theme.logsCOL1w + theme.logsCOL2w + theme.logsCOL3w
    col5x = boxTx + theme.logsCOL1w + theme.logsCOL2w + theme.logsCOL3w + theme.logsCOL4w
    col6x = boxTx + theme.logsCOL1w + theme.logsCOL2w + theme.logsCOL3w + theme.logsCOL4w + theme.logsCOL5w
    col7x = boxTx + theme.logsCOL1w + theme.logsCOL2w + theme.logsCOL3w + theme.logsCOL4w + theme.logsCOL5w + theme.logsCOL6w

    lcd.color(lcd.RGB(90, 90, 90))

    -- LINES
    lcd.drawLine(boxTx + boxTh / 2, boxTy + (boxTh * 2), boxTx + boxW - (boxTh / 2), boxTy + (boxTh * 2))

    lcd.drawLine(col2x, boxTy + boxTh + boxTh / 2, col2x, boxTy + boxH - (boxTh / 2))
    lcd.drawLine(col3x, boxTy + boxTh + boxTh / 2, col3x, boxTy + boxH - (boxTh / 2))
    lcd.drawLine(col4x, boxTy + boxTh + boxTh / 2, col4x, boxTy + boxH - (boxTh / 2))
    lcd.drawLine(col5x, boxTy + boxTh + boxTh / 2, col5x, boxTy + boxH - (boxTh / 2))
    lcd.drawLine(col6x, boxTy + boxTh + boxTh / 2, col6x, boxTy + boxH - (boxTh / 2))
    lcd.drawLine(col7x, boxTy + boxTh + boxTh / 2, col7x, boxTy + boxH - (boxTh / 2))

    -- HEADER text
    if osf3status.isDARKMODE then
        -- dark theme
        lcd.color(lcd.RGB(255, 255, 255, 1))
    else
        -- light theme
        lcd.color(lcd.RGB(0, 0, 0))
    end
    lcd.font(theme.fontPopupTitle)

    if theme.logsCOL1w ~= 0 then
        str = osf3status.i8n.TIME
        tsizeW, tsizeH = lcd.getTextSize(str)
        lcd.drawText(col1x + (theme.logsCOL1w / 2) - (tsizeW / 2), theme.logsHeaderOffset + (boxTy + boxTh) + ((boxTh / 2) - (tsizeH / 2)), str)
    end

    if theme.logsCOL2w ~= 0 then
        str = osf3status.i8n.VOLTAGE
        tsizeW, tsizeH = lcd.getTextSize(str)
        lcd.drawText((col2x) + (theme.logsCOL2w / 2) - (tsizeW / 2), theme.logsHeaderOffset + (boxTy + boxTh) + (boxTh / 2) - (tsizeH / 2), str)
    end

    if theme.logsCOL3w ~= 0 then
        str = osf3status.i8n.AMPS
        tsizeW, tsizeH = lcd.getTextSize(str)
        lcd.drawText((col3x) + (theme.logsCOL3w / 2) - (tsizeW / 2), theme.logsHeaderOffset + (boxTy + boxTh) + (boxTh / 2) - (tsizeH / 2), str)
    end

    if theme.logsCOL4w ~= 0 then
        str = osf3status.i8n.RPM
        tsizeW, tsizeH = lcd.getTextSize(str)
        lcd.drawText((col4x) + (theme.logsCOL4w / 2) - (tsizeW / 2), theme.logsHeaderOffset + (boxTy + boxTh) + (boxTh / 2) - (tsizeH / 2), str)
    end

    if theme.logsCOL5w ~= 0 then
        str = osf3status.i8n.LQ
        tsizeW, tsizeH = lcd.getTextSize(str)
        lcd.drawText((col5x) + (theme.logsCOL5w / 2) - (tsizeW / 2), theme.logsHeaderOffset + (boxTy + boxTh) + (boxTh / 2) - (tsizeH / 2), str)
    end

    if theme.logsCOL6w ~= 0 then
        str = osf3status.i8n.MCU
        tsizeW, tsizeH = lcd.getTextSize(str)
        lcd.drawText((col6x) + (theme.logsCOL6w / 2) - (tsizeW / 2), theme.logsHeaderOffset + (boxTy + boxTh) + (boxTh / 2) - (tsizeH / 2), str)
    end

    if theme.logsCOL7w ~= 0 then
        str = osf3status.i8n.ESC
        tsizeW, tsizeH = lcd.getTextSize(str)
        lcd.drawText((col7x) + (theme.logsCOL7w / 2) - (tsizeW / 2), theme.logsHeaderOffset + (boxTy + boxTh) + (boxTh / 2) - (tsizeH / 2), str)
    end

    c = 0

    if history ~= nil then
        for index, value in ipairs(history) do
            if value ~= nil then
                if value ~= "" and value ~= nil then
                    rowH = c * boxTh

                    local rowData = osf3status.explode(value, ",")

                    --[[ rowData is a csv string as follows
				
						osf3status.theTIME,osf3status.sensorVoltageMin,osf3status.sensorVoltageMax,osf3status.sensorFuelMin,osf3status.sensorFuelMax,
						osf3status.sensorRPMMin,osf3status.sensorRPMMax,osf3status.sensorCurrentMin,osf3status.sensorCurrentMax,osf3status.sensorRSSIMin,
						osf3status.sensorRSSIMax,osf3status.sensorTempMCUMin,osf3status.sensorTempMCUMax,osf3status.sensorTempESCMin,osf3status.sensorTempESCMax	
				]] --
                    -- loop of rowData and extract each value bases on idx
                    if rowData ~= nil then

                        for idx, snsr in pairs(rowData) do

                            snsr = snsr:gsub("%s+", "")

                            if snsr ~= nil and snsr ~= "" then
                                -- time
                                if idx == 1 and theme.logsCOL1w ~= 0 then
                                    str = osf3status.SecondsToClockAlt(snsr)
                                    tsizeW, tsizeH = lcd.getTextSize(str)
                                    lcd.drawText(col1x + (theme.logsCOL1w / 2) - (tsizeW / 2), boxTy + tsizeH / 2 + (boxTh * 2) + rowH, str)
                                end
                                -- voltagemin
                                if idx == 2 then vstr = snsr end
                                -- voltagemax
                                if idx == 3 and theme.logsCOL2w ~= 0 then
                                    str = osf3status.round(vstr / 100, 1) .. 'v / ' .. osf3status.round(snsr / 100, 1) .. 'v'
                                    tsizeW, tsizeH = lcd.getTextSize(str)
                                    lcd.drawText(col2x + (theme.logsCOL2w / 2) - (tsizeW / 2), boxTy + tsizeH / 2 + (boxTh * 2) + rowH, str)
                                end
                                -- fuelmin
                                if idx == 4 then local logFUELmin = snsr end
                                -- fuelmax
                                if idx == 5 then local logFUELmax = snsr end
                                -- rpmmin
                                if idx == 6 then rstr = snsr end
                                -- rpmmax
                                if idx == 7 and theme.logsCOL4w ~= 0 then
                                    str = rstr .. 'rpm / ' .. snsr .. 'rpm'
                                    tsizeW, tsizeH = lcd.getTextSize(str)
                                    lcd.drawText(col4x + (theme.logsCOL4w / 2) - (tsizeW / 2), boxTy + tsizeH / 2 + (boxTh * 2) + rowH, str)
                                end
                                -- currentmin
                                if idx == 8 then cstr = snsr end
                                -- currentmax
                                if idx == 9 and theme.logsCOL3w ~= 0 then
                                    str = math.floor(cstr / 10) .. 'A / ' .. math.floor(snsr / 10) .. 'A'
                                    tsizeW, tsizeH = lcd.getTextSize(str)
                                    lcd.drawText(col3x + (theme.logsCOL3w / 2) - (tsizeW / 2), boxTy + tsizeH / 2 + (boxTh * 2) + rowH, str)
                                end
                                -- rssimin
                                if idx == 10 then lqstr = snsr end
                                -- rssimax
                                if idx == 11 and theme.logsCOL5w ~= 0 then
                                    str = lqstr .. '% / ' .. snsr .. '%'
                                    tsizeW, tsizeH = lcd.getTextSize(str)
                                    lcd.drawText(col5x + (theme.logsCOL5w / 2) - (tsizeW / 2), boxTy + tsizeH / 2 + (boxTh * 2) + rowH, str)
                                end
                                -- mcumin
                                if idx == 12 then mcustr = snsr end
                                -- mcumax
                                if idx == 13 and theme.logsCOL6w ~= 0 then
                                    str = osf3status.round(mcustr / 100, 0) .. '° / ' .. osf3status.round(snsr / 100, 0) .. '°'
                                    strf = osf3status.round(mcustr / 100, 0) .. '. / ' .. osf3status.round(snsr / 100, 0) .. '.'
                                    tsizeW, tsizeH = lcd.getTextSize(strf)
                                    lcd.drawText(col6x + (theme.logsCOL6w / 2) - (tsizeW / 2), boxTy + tsizeH / 2 + (boxTh * 2) + rowH, str)
                                end
                                -- escmin
                                if idx == 14 then escstr = snsr end
                                -- escmax
                                if idx == 15 and theme.logsCOL7w ~= 0 then
                                    str = osf3status.round(escstr / 100, 0) .. '° / ' .. osf3status.round(snsr / 100, 0) .. '°'
                                    strf = osf3status.round(escstr / 100, 0) .. '. / ' .. osf3status.round(snsr / 100, 0) .. '.'
                                    tsizeW, tsizeH = lcd.getTextSize(strf)
                                    lcd.drawText(col7x + (theme.logsCOL7w / 2) - (tsizeW / 2), boxTy + tsizeH / 2 + (boxTh * 2) + rowH, str)
                                end
                            end
                            -- end loop of each storage line		
                        end
                        c = c + 1

                        if h < 200 then
                            if c > 5 then break end
                        else
                            if c > 7 then break end
                        end
                        -- end of each log storage slot
                    end
                end
            end
        end
    end

    -- lcd.drawText((w / 2) - tsizeW / 2, (h / 2) - tsizeH / 2, str)
    return
end

function osf3status.telemetryBoxImage(x, y, w, h, gfx)

    osf3status.isVisible = lcd.isVisible()
    osf3status.isDARKMODE = lcd.darkMode()
    local theme = osf3status.getThemeInfo()

    if osf3status.isDARKMODE then
        lcd.color(lcd.RGB(40, 40, 40))
    else
        lcd.color(lcd.RGB(240, 240, 240))
    end

    -- draw box backgosf3status.round	
    lcd.drawFilledRectangle(x, y, w, h)

    lcd.drawBitmap(x, y, gfx, w - theme.colSpacing, h - theme.colSpacing)

end

function osf3status.paint(widget)

    osf3status.isVisible = lcd.isVisible()
    osf3status.isDARKMODE = lcd.darkMode()

    osf3status.isInConfiguration = false

    local cellVoltage
    -- voltage detection
    if osf3status.btypeParam ~= nil then
        if osf3status.btypeParam == 0 then
            -- LiPo
            cellVoltage = 3.6
        elseif osf3status.btypeParam == 1 then
            -- LiHv
            cellVoltage = 3.6
        elseif osf3status.btypeParam == 2 then
            -- Lion
            cellVoltage = 3
        elseif osf3status.btypeParam == 3 then
            -- LiFe
            cellVoltage = 2.9
        elseif osf3status.btypeParam == 4 then
            -- NiMh
            cellVoltage = 1.1
        else
            -- LiPo (default)
            cellVoltage = 3.6
        end

        if osf3status.sensors.voltage ~= nil then
            -- we use osf3status.lowvoltagsenseParam is use to raise or lower sensitivity
            if osf3status.lowvoltagsenseParam == 1 then
                zippo = 0.2
            elseif osf3status.lowvoltagsenseParam == 2 then
                zippo = 0.1
            else
                zippo = 0
            end
            --low
            if osf3status.sensors.voltage / 100 < ((cellVoltage * osf3status.cellsParam) + zippo) then
                osf3status.voltageIsLow = true
            else
                osf3status.voltageIsLow = false
            end
            --getting low
            if osf3status.sensors.voltage / 100 < (((cellVoltage + 0.2) * osf3status.cellsParam) + zippo) then
                osf3status.voltageIsGettingLow = true
            else
                osf3status.voltageIsGettingLow = false
            end
        else
            osf3status.voltageIsLow = false
            osf3status.voltageIsGettingLow = false
        end
    end

    -- fuel detection
    if osf3status.sensors.voltage ~= nil then
        if osf3status.sensors.fuel < osf3status.lowfuelParam then
            osf3status.fuelIsLow = true
        else
            osf3status.fuelIsLow = false
        end
    else
        osf3status.fuelIsLow = false
    end

    -- fuel detection
    if osf3status.sensors.voltage ~= nil then

        if osf3status.sensors.fuel < (osf3status.lowfuelParam + (osf3status.lowfuelParam * 20)/100) then
            osf3status.fuelIsGettingLow = true
        else
            osf3status.fuelIsGettingLow = false
        end
    else
        osf3status.fuelIsGettingLow = false
    end

    -- -----------------------------------------------------------------------------------------------
    -- write values to boxes
    -- -----------------------------------------------------------------------------------------------

    local theme = osf3status.getThemeInfo()
    local w, h = lcd.getWindowSize()

    if osf3status.isVisible then
        -- blank out display
        if osf3status.isDARKMODE then
            -- dark theme
            lcd.color(lcd.RGB(16, 16, 16))
        else
            -- light theme
            lcd.color(lcd.RGB(209, 208, 208))
        end
        lcd.drawFilledRectangle(0, 0, w, h)

        -- hard error
        if theme.supportedRADIO ~= true then
            osf3status.screenError(osf3status.i8n.UNKNOWN .. " " .. environment.board)
            return
        end

        -- widget size
        if environment.board == "V20" or environment.board == "XES" or environment.board == "X20" or environment.board == "X20S" or environment.board == "X20PRO" or environment.board == "X20PROAW" then
            if w ~= 784 and h ~= 294 then
                osf3status.screenError(osf3status.i8n.DISPLAYSIZEINVALID)
                return
            end
        end
        if environment.board == "X18" or environment.board == "X18S" then
            smallTEXT = true
            if w ~= 472 and h ~= 191 then
                osf3status.screenError(osf3status.i8n.DISPLAYSIZEINVALID)
                return
            end
        end
        if environment.board == "X14" or environment.board == "X14S" then
            if w ~= 630 and h ~= 236 then
                osf3status.screenError(osf3status.i8n.DISPLAYSIZEINVALID)
                return
            end
        end
        if environment.board == "TWXLITE" or environment.board == "TWXLITES" then
            if w ~= 472 and h ~= 191 then
                osf3status.screenError(osf3status.i8n.DISPLAYSIZEINVALID)
                return
            end
        end
        if environment.board == "X10EXPRESS" or environment.board == "X10" or environment.board == "X10S" or environment.board == "X12" or environment.board == "X12S" then
            if w ~= 472 and h ~= 158 then
                osf3status.screenError(osf3status.i8n.DISPLAYSIZEINVALID)
                return
            end
        end

        boxW = theme.fullBoxW - theme.colSpacing
        boxH = theme.fullBoxH - theme.colSpacing

        boxHs = theme.fullBoxH / 2 - theme.colSpacing
        boxWs = theme.fullBoxW / 2 - theme.colSpacing

        -- FUEL
        if osf3status.sensors.fuel ~= nil then

            sensorWARN = 3
            if osf3status.fuelIsGettingLow then sensorWARN = 2 end
            if osf3status.fuelIsLow then sensorWARN = 1 end
            

            sensorVALUE = osf3status.sensors.fuel

            if osf3status.sensors.fuel < 5 then sensorVALUE = "0" end

            if osf3status.titleParam == true then
                sensorTITLE = "FUEL"
            else
                sensorTITLE = ""
            end

            if osf3status.sensorFuelMin == 0 or osf3status.sensorFuelMin == nil or osf3status.theTIME == 0 then
                sensorMIN = "-"
            else
                sensorMIN = osf3status.sensorFuelMin
            end

            if osf3status.sensorFuelMax == 0 or osf3status.sensorFuelMax == nil or osf3status.theTIME == 0 then
                sensorMAX = "-"
            else
                sensorMAX = osf3status.sensorFuelMax
            end

            sensorUNIT = "%"

            local sensorTGT = 'fuel'
            osf3status.sensordisplay[sensorTGT] = {}
            osf3status.sensordisplay[sensorTGT]['title'] = sensorTITLE
            osf3status.sensordisplay[sensorTGT]['value'] = sensorVALUE
            osf3status.sensordisplay[sensorTGT]['warn'] = sensorWARN
            osf3status.sensordisplay[sensorTGT]['min'] = sensorMIN
            osf3status.sensordisplay[sensorTGT]['max'] = sensorMAX
            osf3status.sensordisplay[sensorTGT]['unit'] = sensorUNIT

        end

        -- RPM
        if osf3status.sensors.rpm ~= nil then

            sensorVALUE = osf3status.sensors.rpm

            if osf3status.sensors.rpm < 5 then sensorVALUE = 0 end

            if osf3status.titleParam == true then
                sensorTITLE = theme.title_rpm
            else
                sensorTITLE = ""
            end

            if osf3status.sensorRPMMin == 0 or osf3status.sensorRPMMin == nil or osf3status.theTIME == 0 then
                sensorMIN = "-"
            else
                sensorMIN = osf3status.sensorRPMMin
            end

            if osf3status.sensorRPMMax == 0 or osf3status.sensorRPMMax == nil or osf3status.theTIME == 0 then
                sensorMAX = "-"
            else
                sensorMAX = osf3status.sensorRPMMax
            end

            sensorUNIT = "rpm"
            sensorWARN = 0

            local sensorTGT = 'rpm'
            osf3status.sensordisplay[sensorTGT] = {}
            osf3status.sensordisplay[sensorTGT]['title'] = sensorTITLE
            osf3status.sensordisplay[sensorTGT]['value'] = sensorVALUE
            osf3status.sensordisplay[sensorTGT]['warn'] = sensorWARN
            osf3status.sensordisplay[sensorTGT]['min'] = sensorMIN
            osf3status.sensordisplay[sensorTGT]['max'] = sensorMAX
            osf3status.sensordisplay[sensorTGT]['unit'] = sensorUNIT

        end

        -- VOLTAGE
        if osf3status.sensors.voltage ~= nil then

            sensorWARN = 3
            if osf3status.voltageIsGettingLow then sensorWARN = 2 end
            if osf3status.voltageIsLow then sensorWARN = 1 end

            sensorVALUE = osf3status.sensors.voltage / 100

            if sensorVALUE < 1 then sensorVALUE = 0 end

            if osf3status.titleParam == true then
                sensorTITLE = theme.title_voltage
            else
                sensorTITLE = ""
            end

            if osf3status.sensorVoltageMin == 0 or osf3status.sensorVoltageMin == nil or osf3status.theTIME == 0 then
                sensorMIN = "-"
            else
                sensorMIN = osf3status.sensorVoltageMin / 100
            end

            if osf3status.sensorVoltageMax == 0 or osf3status.sensorVoltageMax == nil or osf3status.theTIME == 0 then
                sensorMAX = "-"
            else
                sensorMAX = osf3status.sensorVoltageMax / 100
            end

            sensorUNIT = "v"

            local sensorTGT = 'voltage'
            osf3status.sensordisplay[sensorTGT] = {}
            osf3status.sensordisplay[sensorTGT]['title'] = sensorTITLE
            osf3status.sensordisplay[sensorTGT]['value'] = sensorVALUE
            osf3status.sensordisplay[sensorTGT]['warn'] = sensorWARN
            osf3status.sensordisplay[sensorTGT]['min'] = sensorMIN
            osf3status.sensordisplay[sensorTGT]['max'] = sensorMAX
            osf3status.sensordisplay[sensorTGT]['unit'] = sensorUNIT

        end

        -- CURRENT
        if osf3status.sensors.current ~= nil then

            sensorVALUE = osf3status.sensors.current / 10
            if osf3status.linkUP == 0 then
                sensorVALUE = 0
            else
                if sensorVALUE == 0 then
                    local fakeC
                    if osf3status.sensors.rpm > 5 then
                        fakeC = 1
                    elseif osf3status.sensors.rpm > 50 then
                        fakeC = 2
                    elseif osf3status.sensors.rpm > 100 then
                        fakeC = 3
                    elseif osf3status.sensors.rpm > 200 then
                        fakeC = 4
                    elseif osf3status.sensors.rpm > 500 then
                        fakeC = 5
                    elseif osf3status.sensors.rpm > 1000 then
                        fakeC = 6
                    else
                        if osf3status.sensors.voltage > 0 then
                            fakeC = math.random(1, 3) / 10
                        else
                            fakeC = 0
                        end
                    end
                    sensorVALUE = fakeC
                end
            end

            if osf3status.titleParam == true then
                sensorTITLE = theme.title_current
            else
                sensorTITLE = ""
            end

            if osf3status.sensorCurrentMin == 0 or osf3status.sensorCurrentMin == nil or osf3status.theTIME == 0 then
                sensorMIN = "-"
            else
                sensorMIN = osf3status.sensorCurrentMin / 10
            end

            if osf3status.sensorCurrentMax == 0 or osf3status.sensorCurrentMax == nil or osf3status.theTIME == 0 then
                sensorMAX = "-"
            else
                sensorMAX = osf3status.sensorCurrentMax / 10
            end

            sensorUNIT = "A"
            sensorWARN = 0

            local sensorTGT = 'current'
            osf3status.sensordisplay[sensorTGT] = {}
            osf3status.sensordisplay[sensorTGT]['title'] = sensorTITLE
            osf3status.sensordisplay[sensorTGT]['value'] = sensorVALUE
            osf3status.sensordisplay[sensorTGT]['warn'] = sensorWARN
            osf3status.sensordisplay[sensorTGT]['min'] = sensorMIN
            osf3status.sensordisplay[sensorTGT]['max'] = sensorMAX
            osf3status.sensordisplay[sensorTGT]['unit'] = sensorUNIT

        end

        -- TEMP ESC
        if osf3status.sensors.temp_esc ~= nil then

            sensorVALUE = osf3status.round(osf3status.sensors.temp_esc / 100, 0)

            if sensorVALUE < 1 then sensorVALUE = 0 end

            if osf3status.titleParam == true then
                sensorTITLE = theme.title_tempESC
            else
                sensorTITLE = ""
            end

            if osf3status.sensorTempESCMin == 0 or osf3status.sensorTempESCMin == nil or osf3status.theTIME == 0 then
                sensorMIN = "-"
            else
                sensorMIN = osf3status.round(osf3status.sensorTempESCMin / 100, 0)
            end

            if osf3status.sensorTempESCMax == 0 or osf3status.sensorTempESCMax == nil or osf3status.theTIME == 0 then
                sensorMAX = "-"
            else
                sensorMAX = osf3status.round(osf3status.sensorTempESCMax / 100, 0)
            end

            sensorUNIT = "°"
            sensorWARN = 0

            local sensorTGT = 'temp_esc'
            osf3status.sensordisplay[sensorTGT] = {}
            osf3status.sensordisplay[sensorTGT]['title'] = sensorTITLE
            osf3status.sensordisplay[sensorTGT]['value'] = sensorVALUE
            osf3status.sensordisplay[sensorTGT]['warn'] = sensorWARN
            osf3status.sensordisplay[sensorTGT]['min'] = sensorMIN
            osf3status.sensordisplay[sensorTGT]['max'] = sensorMAX
            osf3status.sensordisplay[sensorTGT]['unit'] = sensorUNIT

        end

        -- TEMP MCU
        if osf3status.sensors.temp_mcu ~= nil then

            sensorVALUE = osf3status.round(osf3status.sensors.temp_mcu / 100, 0)

            if sensorVALUE < 1 then sensorVALUE = 0 end

            if osf3status.titleParam == true then
                sensorTITLE = theme.title_tempMCU
            else
                sensorTITLE = ""
            end

            if osf3status.sensorTempMCUMin == 0 or osf3status.sensorTempMCUMin == nil or osf3status.theTIME == 0 then
                sensorMIN = "-"
            else
                sensorMIN = osf3status.round(osf3status.sensorTempMCUMin / 100, 0)
            end

            if osf3status.sensorTempMCUMax == 0 or osf3status.sensorTempMCUMax == nil or osf3status.theTIME == 0 then
                sensorMAX = "-"
            else
                sensorMAX = osf3status.round(osf3status.sensorTempMCUMax / 100, 0)
            end

            sensorUNIT = "°"
            sensorWARN = 0

            local sensorTGT = 'temp_mcu'
            osf3status.sensordisplay[sensorTGT] = {}
            osf3status.sensordisplay[sensorTGT]['title'] = sensorTITLE
            osf3status.sensordisplay[sensorTGT]['value'] = sensorVALUE
            osf3status.sensordisplay[sensorTGT]['warn'] = sensorWARN
            osf3status.sensordisplay[sensorTGT]['min'] = sensorMIN
            osf3status.sensordisplay[sensorTGT]['max'] = sensorMAX
            osf3status.sensordisplay[sensorTGT]['unit'] = sensorUNIT

        end

        -- RSSI
        if osf3status.sensors.rssi ~= nil and (osf3status.quadBoxParam == 0 or osf3status.quadBoxParam == 1) then

            sensorVALUE = osf3status.sensors.rssi

            if sensorVALUE < 1 then sensorVALUE = 0 end

            if osf3status.titleParam == true then
                sensorTITLE = theme.title_rssi
            else
                sensorTITLE = ""
            end

            if osf3status.sensorRSSIMin == 0 or osf3status.sensorRSSIMin == nil then
                sensorMIN = "-"
            else
                sensorMIN = osf3status.sensorRSSIMin
            end

            if osf3status.sensorRSSIMax == 0 or osf3status.sensorRSSIMax == nil then
                sensorMAX = "-"
            else
                sensorMAX = osf3status.sensorRSSIMax
            end

            sensorUNIT = "%"
            sensorWARN = 0

            local sensorTGT = 'rssi'
            osf3status.sensordisplay[sensorTGT] = {}
            osf3status.sensordisplay[sensorTGT]['title'] = sensorTITLE
            osf3status.sensordisplay[sensorTGT]['value'] = sensorVALUE
            osf3status.sensordisplay[sensorTGT]['warn'] = sensorWARN
            osf3status.sensordisplay[sensorTGT]['min'] = sensorMIN
            osf3status.sensordisplay[sensorTGT]['max'] = sensorMAX
            osf3status.sensordisplay[sensorTGT]['unit'] = sensorUNIT

        end

        -- mah
        if osf3status.sensors.mah ~= nil then

            sensorVALUE = osf3status.sensors.mah

            if sensorVALUE < 1 then sensorVALUE = 0 end

            if osf3status.titleParam == true then
                sensorTITLE = theme.title_mah
            else
                sensorTITLE = ""
            end

            if sensorMAHMin == 0 or sensorMAHMin == nil then
                sensorMIN = "-"
            else
                sensorMIN = sensorMAHMin
            end

            if sensorMAHMax == 0 or sensorMAHMax == nil then
                sensorMAX = "-"
            else
                sensorMAX = sensorMAHMax
            end

            sensorUNIT = ""
            sensorWARN = 0

            local sensorTGT = 'mah'
            osf3status.sensordisplay[sensorTGT] = {}
            osf3status.sensordisplay[sensorTGT]['title'] = sensorTITLE
            osf3status.sensordisplay[sensorTGT]['value'] = sensorVALUE
            osf3status.sensordisplay[sensorTGT]['warn'] = sensorWARN
            osf3status.sensordisplay[sensorTGT]['min'] = sensorMIN
            osf3status.sensordisplay[sensorTGT]['max'] = sensorMAX
            osf3status.sensordisplay[sensorTGT]['unit'] = sensorUNIT
        end

        -- TIMER
        sensorMIN = nil
        sensorMAX = nil

        if osf3status.theTIME ~= nil or osf3status.theTIME == 0 then
            str = osf3status.SecondsToClock(osf3status.theTIME)
        else
            str = "00:00:00"
        end

        if osf3status.titleParam == true then
            sensorTITLE = theme.title_time
        else
            sensorTITLE = ""
        end

        sensorVALUE = str

        sensorUNIT = ""
        sensorWARN = 0

        local sensorTGT = 'timer'
        osf3status.sensordisplay[sensorTGT] = {}
        osf3status.sensordisplay[sensorTGT]['title'] = sensorTITLE
        osf3status.sensordisplay[sensorTGT]['value'] = sensorVALUE
        osf3status.sensordisplay[sensorTGT]['warn'] = sensorWARN
        osf3status.sensordisplay[sensorTGT]['min'] = sensorMIN
        osf3status.sensordisplay[sensorTGT]['max'] = sensorMAX
        osf3status.sensordisplay[sensorTGT]['unit'] = sensorUNIT

        -- GOV MODE
        if osf3status.govmodeParam == 0 then
            if osf3status.sensors.govmode == nil then osf3status.sensors.govmode = "INIT" end
            str = osf3status.sensors.govmode
            sensorTITLE = theme.title_governor
        else
            str = osf3status.sensors.fm
            sensorTITLE = theme.title_fm
        end
        sensorVALUE = str

        if osf3status.titleParam ~= true then sensorTITLE = "" end

        sensorUNIT = ""
        sensorWARN = 0
        sensorMIN = nil
        sensorMAX = nil

        local sensorTGT = 'governor'
        osf3status.sensordisplay[sensorTGT] = {}
        osf3status.sensordisplay[sensorTGT]['title'] = sensorTITLE
        osf3status.sensordisplay[sensorTGT]['value'] = sensorVALUE
        osf3status.sensordisplay[sensorTGT]['warn'] = osf3status.govColorFlag(sensorVALUE)
        osf3status.sensordisplay[sensorTGT]['min'] = sensorMIN
        osf3status.sensordisplay[sensorTGT]['max'] = sensorMAX
        osf3status.sensordisplay[sensorTGT]['unit'] = sensorUNIT

        -- loop throught 6 box and link into osf3status.sensordisplay to choose where to put things
        local c = 1
        while c <= 6 do

            -- reset all values
            sensorVALUE = nil
            sensorUNIT = nil
            sensorMIN = nil
            sensorMAX = nil
            sensorWARN = 0
            sensorTITLE = nil
            sensorTGT = nil
            smallBOX = false

            -- column positions and tgt
            if c == 1 then
                posX = 0
                posY = theme.colSpacing
                sensorTGT = osf3status.layoutBox1Param
            end
            if c == 2 then
                posX = 0 + theme.colSpacing + boxW
                posY = theme.colSpacing
                sensorTGT = osf3status.layoutBox2Param
            end
            if c == 3 then
                posX = 0 + theme.colSpacing + boxW + theme.colSpacing + boxW
                posY = theme.colSpacing
                sensorTGT = osf3status.layoutBox3Param
            end
            if c == 4 then
                posX = 0
                posY = theme.colSpacing + boxH + theme.colSpacing
                sensorTGT = osf3status.layoutBox4Param
            end
            if c == 5 then
                posX = 0 + theme.colSpacing + boxW
                posY = theme.colSpacing + boxH + theme.colSpacing
                sensorTGT = osf3status.layoutBox5Param
            end
            if c == 6 then
                posX = 0 + theme.colSpacing + boxW + theme.colSpacing + boxW
                posY = theme.colSpacing + boxH + theme.colSpacing
                sensorTGT = osf3status.layoutBox6Param
            end

            -- remap sensorTGT
            if sensorTGT == 1 then sensorTGT = 'timer' end
            if sensorTGT == 2 then sensorTGT = 'voltage' end
            if sensorTGT == 3 then sensorTGT = 'fuel' end
            if sensorTGT == 4 then sensorTGT = 'current' end
            if sensorTGT == 17 then sensorTGT = 'mah' end
            if sensorTGT == 5 then sensorTGT = 'rpm' end
            if sensorTGT == 6 then sensorTGT = 'rssi' end
            if sensorTGT == 7 then sensorTGT = 'temp_esc' end
            if sensorTGT == 8 then sensorTGT = 'temp_mcu' end
            if sensorTGT == 9 then sensorTGT = 'image' end
            if sensorTGT == 10 then sensorTGT = 'governor' end
            if sensorTGT == 11 then sensorTGT = 'image__gov' end
            if sensorTGT == 12 then sensorTGT = 'rssi__timer' end
            if sensorTGT == 13 then sensorTGT = 'temp_esc__temp_mcu' end
            if sensorTGT == 14 then sensorTGT = 'voltage__fuel' end
            if sensorTGT == 15 then sensorTGT = 'voltage__current' end
            if sensorTGT == 16 then sensorTGT = 'voltage__mah' end
            if sensorTGT == 20 then sensorTGT = 'rssi_timer_temp_esc_temp_mcu' end
            if sensorTGT == 21 then sensorTGT = 'max_current' end
            if sensorTGT == 22 then sensorTGT = 'lq__gov' end

            -- set sensor values based on sensorTGT
            if osf3status.sensordisplay[sensorTGT] ~= nil then
                -- all std values.  =
                sensorVALUE = osf3status.sensordisplay[sensorTGT]['value']
                sensorUNIT = osf3status.sensordisplay[sensorTGT]['unit']
                sensorMIN = osf3status.sensordisplay[sensorTGT]['min']
                sensorMAX = osf3status.sensordisplay[sensorTGT]['max']
                sensorWARN = osf3status.sensordisplay[sensorTGT]['warn']
                sensorTITLE = osf3status.sensordisplay[sensorTGT]['title']
                osf3status.telemetryBox(posX, posY, boxW, boxH, sensorTITLE, sensorVALUE, sensorUNIT, smallBOX, sensorWARN, sensorMIN, sensorMAX)
            else

                if sensorTGT == 'image' then
                    -- IMAGE
                    if osf3status.gfx_model ~= nil then
                        osf3status.telemetryBoxImage(posX, posY, boxW, boxH, osf3status.gfx_model)
                    else
                        osf3status.telemetryBoxImage(posX, posY, boxW, boxH, osf3status.gfx_heli)
                    end
                end

                if sensorTGT == 'image__gov' then
                    -- IMAGE + GOVERNOR
                    if osf3status.gfx_model ~= nil then
                        osf3status.telemetryBoxImage(posX, posY, boxW, boxH / 2 - (theme.colSpacing / 2), osf3status.gfx_model)
                    else
                        osf3status.telemetryBoxImage(posX, posY, boxW, boxH / 2 - (theme.colSpacing / 2), osf3status.gfx_heli)
                    end

                    sensorTGT = "governor"
                    sensorVALUE = osf3status.sensordisplay[sensorTGT]['value']
                    sensorUNIT = osf3status.sensordisplay[sensorTGT]['unit']
                    sensorMIN = osf3status.sensordisplay[sensorTGT]['min']
                    sensorMAX = osf3status.sensordisplay[sensorTGT]['max']
                    sensorWARN = osf3status.sensordisplay[sensorTGT]['warn']
                    sensorTITLE = osf3status.sensordisplay[sensorTGT]['title']

                    smallBOX = true
                    osf3status.telemetryBox(posX, posY + boxH / 2 + (theme.colSpacing / 2), boxW, boxH / 2 - theme.colSpacing / 2, sensorTITLE, sensorVALUE, sensorUNIT, smallBOX, sensorWARN, sensorMIN,
                                           sensorMAX)

                end

                if sensorTGT == 'lq__gov' then
                    -- LQ + GOV
                    sensorTGT = "rssi"
                    sensorVALUE = osf3status.sensordisplay[sensorTGT]['value']
                    sensorUNIT = osf3status.sensordisplay[sensorTGT]['unit']
                    sensorMIN = osf3status.sensordisplay[sensorTGT]['min']
                    sensorMAX = osf3status.sensordisplay[sensorTGT]['max']
                    sensorWARN = osf3status.sensordisplay[sensorTGT]['warn']
                    sensorTITLE = osf3status.sensordisplay[sensorTGT]['title']

                    smallBOX = true
                    osf3status.telemetryBox(posX, posY, boxW, boxH / 2 - (theme.colSpacing / 2), sensorTITLE, sensorVALUE, sensorUNIT, smallBOX, sensorWARN, sensorMIN, sensorMAX)

                    sensorTGT = "governor"
                    sensorVALUE = osf3status.sensordisplay[sensorTGT]['value']
                    sensorUNIT = osf3status.sensordisplay[sensorTGT]['unit']
                    sensorMIN = osf3status.sensordisplay[sensorTGT]['min']
                    sensorMAX = osf3status.sensordisplay[sensorTGT]['max']
                    sensorWARN = osf3status.sensordisplay[sensorTGT]['warn']
                    sensorTITLE = osf3status.sensordisplay[sensorTGT]['title']

                    smallBOX = true
                    osf3status.telemetryBox(posX, posY + boxH / 2 + (theme.colSpacing / 2), boxW, boxH / 2 - theme.colSpacing / 2, sensorTITLE, sensorVALUE, sensorUNIT, smallBOX, sensorWARN, sensorMIN,
                                           sensorMAX)

                end

                if sensorTGT == 'rssi__timer' then

                    sensorTGT = "rssi"
                    if osf3status.sensordisplay[sensorTGT] ~= nil then
                        sensorVALUE = osf3status.sensordisplay[sensorTGT]['value']
                        sensorUNIT = osf3status.sensordisplay[sensorTGT]['unit']
                        sensorMIN = osf3status.sensordisplay[sensorTGT]['min']
                        sensorMAX = osf3status.sensordisplay[sensorTGT]['max']
                        sensorWARN = osf3status.sensordisplay[sensorTGT]['warn']
                        sensorTITLE = osf3status.sensordisplay[sensorTGT]['title']

                        smallBOX = true
                        osf3status.telemetryBox(posX, posY, boxW, boxH / 2 - (theme.colSpacing / 2), sensorTITLE, sensorVALUE, sensorUNIT, smallBOX, sensorWARN, sensorMIN, sensorMAX)
                    end

                    sensorTGT = "timer"
                    sensorVALUE = osf3status.sensordisplay[sensorTGT]['value']
                    sensorUNIT = osf3status.sensordisplay[sensorTGT]['unit']
                    sensorMIN = osf3status.sensordisplay[sensorTGT]['min']
                    sensorMAX = osf3status.sensordisplay[sensorTGT]['max']
                    sensorWARN = osf3status.sensordisplay[sensorTGT]['warn']
                    sensorTITLE = osf3status.sensordisplay[sensorTGT]['title']

                    smallBOX = true
                    osf3status.telemetryBox(posX, posY + boxH / 2 + (theme.colSpacing / 2), boxW, boxH / 2 - theme.colSpacing / 2, sensorTITLE, sensorVALUE, sensorUNIT, smallBOX, sensorWARN, sensorMIN,
                                           sensorMAX)

                end

                if sensorTGT == 'temp_esc__temp_mcu' then

                    sensorTGT = "temp_esc"
                    sensorVALUE = osf3status.sensordisplay[sensorTGT]['value']
                    sensorUNIT = osf3status.sensordisplay[sensorTGT]['unit']
                    sensorMIN = osf3status.sensordisplay[sensorTGT]['min']
                    sensorMAX = osf3status.sensordisplay[sensorTGT]['max']
                    sensorWARN = osf3status.sensordisplay[sensorTGT]['warn']
                    sensorTITLE = osf3status.sensordisplay[sensorTGT]['title']

                    smallBOX = true
                    osf3status.telemetryBox(posX, posY, boxW, boxH / 2 - (theme.colSpacing / 2), sensorTITLE, sensorVALUE, sensorUNIT, smallBOX, sensorWARN, sensorMIN, sensorMAX)

                    sensorTGT = "temp_mcu"
                    sensorVALUE = osf3status.sensordisplay[sensorTGT]['value']
                    sensorUNIT = osf3status.sensordisplay[sensorTGT]['unit']
                    sensorMIN = osf3status.sensordisplay[sensorTGT]['min']
                    sensorMAX = osf3status.sensordisplay[sensorTGT]['max']
                    sensorWARN = osf3status.sensordisplay[sensorTGT]['warn']
                    sensorTITLE = osf3status.sensordisplay[sensorTGT]['title']

                    smallBOX = true
                    osf3status.telemetryBox(posX, posY + boxH / 2 + (theme.colSpacing / 2), boxW, boxH / 2 - theme.colSpacing / 2, sensorTITLE, sensorVALUE, sensorUNIT, smallBOX, sensorWARN, sensorMIN,
                                           sensorMAX)

                end

                if sensorTGT == 'voltage__fuel' then

                    sensorTGT = "voltage"
                    sensorVALUE = osf3status.sensordisplay[sensorTGT]['value']
                    sensorUNIT = osf3status.sensordisplay[sensorTGT]['unit']
                    sensorMIN = osf3status.sensordisplay[sensorTGT]['min']
                    sensorMAX = osf3status.sensordisplay[sensorTGT]['max']
                    sensorWARN = osf3status.sensordisplay[sensorTGT]['warn']
                    sensorTITLE = osf3status.sensordisplay[sensorTGT]['title']

                    smallBOX = true
                    osf3status.telemetryBox(posX, posY, boxW, boxH / 2 - (theme.colSpacing / 2), sensorTITLE, sensorVALUE, sensorUNIT, smallBOX, sensorWARN, sensorMIN, sensorMAX)

                    sensorTGT = "fuel"
                    sensorVALUE = osf3status.sensordisplay[sensorTGT]['value']
                    sensorUNIT = osf3status.sensordisplay[sensorTGT]['unit']
                    sensorMIN = osf3status.sensordisplay[sensorTGT]['min']
                    sensorMAX = osf3status.sensordisplay[sensorTGT]['max']
                    sensorWARN = osf3status.sensordisplay[sensorTGT]['warn']
                    sensorTITLE = osf3status.sensordisplay[sensorTGT]['title']

                    smallBOX = true
                    osf3status.telemetryBox(posX, posY + boxH / 2 + (theme.colSpacing / 2), boxW, boxH / 2 - theme.colSpacing / 2, sensorTITLE, sensorVALUE, sensorUNIT, smallBOX, sensorWARN, sensorMIN,
                                           sensorMAX)

                end

                if sensorTGT == 'voltage__current' then

                    sensorTGT = "voltage"
                    sensorVALUE = osf3status.sensordisplay[sensorTGT]['value']
                    sensorUNIT = osf3status.sensordisplay[sensorTGT]['unit']
                    sensorMIN = osf3status.sensordisplay[sensorTGT]['min']
                    sensorMAX = osf3status.sensordisplay[sensorTGT]['max']
                    sensorWARN = osf3status.sensordisplay[sensorTGT]['warn']
                    sensorTITLE = osf3status.sensordisplay[sensorTGT]['title']

                    smallBOX = true
                    osf3status.telemetryBox(posX, posY, boxW, boxH / 2 - (theme.colSpacing / 2), sensorTITLE, sensorVALUE, sensorUNIT, smallBOX, sensorWARN, sensorMIN, sensorMAX)

                    sensorTGT = "current"
                    sensorVALUE = osf3status.sensordisplay[sensorTGT]['value']
                    sensorUNIT = osf3status.sensordisplay[sensorTGT]['unit']
                    sensorMIN = osf3status.sensordisplay[sensorTGT]['min']
                    sensorMAX = osf3status.sensordisplay[sensorTGT]['max']
                    sensorWARN = osf3status.sensordisplay[sensorTGT]['warn']
                    sensorTITLE = osf3status.sensordisplay[sensorTGT]['title']

                    smallBOX = true
                    osf3status.telemetryBox(posX, posY + boxH / 2 + (theme.colSpacing / 2), boxW, boxH / 2 - theme.colSpacing / 2, sensorTITLE, sensorVALUE, sensorUNIT, smallBOX, sensorWARN, sensorMIN,
                                           sensorMAX)

                end

                if sensorTGT == 'voltage__mah' then

                    sensorTGT = "voltage"
                    sensorVALUE = osf3status.sensordisplay[sensorTGT]['value']
                    sensorUNIT = osf3status.sensordisplay[sensorTGT]['unit']
                    sensorMIN = osf3status.sensordisplay[sensorTGT]['min']
                    sensorMAX = osf3status.sensordisplay[sensorTGT]['max']
                    sensorWARN = osf3status.sensordisplay[sensorTGT]['warn']
                    sensorTITLE = osf3status.sensordisplay[sensorTGT]['title']

                    smallBOX = true
                    osf3status.telemetryBox(posX, posY, boxW, boxH / 2 - (theme.colSpacing / 2), sensorTITLE, sensorVALUE, sensorUNIT, smallBOX, sensorWARN, sensorMIN, sensorMAX)

                    sensorTGT = "mah"
                    sensorVALUE = osf3status.sensordisplay[sensorTGT]['value']
                    sensorUNIT = osf3status.sensordisplay[sensorTGT]['unit']
                    sensorMIN = osf3status.sensordisplay[sensorTGT]['min']
                    sensorMAX = osf3status.sensordisplay[sensorTGT]['max']
                    sensorWARN = osf3status.sensordisplay[sensorTGT]['warn']
                    sensorTITLE = osf3status.sensordisplay[sensorTGT]['title']

                    smallBOX = true
                    osf3status.telemetryBox(posX, posY + boxH / 2 + (theme.colSpacing / 2), boxW, boxH / 2 - theme.colSpacing / 2, sensorTITLE, sensorVALUE, sensorUNIT, smallBOX, sensorWARN, sensorMIN,
                                           sensorMAX)

                end

                if sensorTGT == 'rssi_timer_temp_esc_temp_mcu' then

                    sensorTGT = "rssi"
                    sensorVALUE = osf3status.sensordisplay[sensorTGT]['value']
                    sensorUNIT = osf3status.sensordisplay[sensorTGT]['unit']
                    sensorMIN = osf3status.sensordisplay[sensorTGT]['min']
                    sensorMAX = osf3status.sensordisplay[sensorTGT]['max']
                    sensorWARN = osf3status.sensordisplay[sensorTGT]['warn']
                    sensorTITLE = osf3status.sensordisplay[sensorTGT]['title']

                    smallBOX = true
                    osf3status.telemetryBox(posX, posY, boxW / 2 - (theme.colSpacing / 2), boxH / 2 - (theme.colSpacing / 2), sensorTITLE, sensorVALUE, sensorUNIT, smallBOX, sensorWARN, sensorMIN,
                                           sensorMAX)

                    sensorTGT = "timer"
                    sensorVALUE = osf3status.sensordisplay[sensorTGT]['value']
                    sensorUNIT = osf3status.sensordisplay[sensorTGT]['unit']
                    sensorMIN = osf3status.sensordisplay[sensorTGT]['min']
                    sensorMAX = osf3status.sensordisplay[sensorTGT]['max']
                    sensorWARN = osf3status.sensordisplay[sensorTGT]['warn']
                    sensorTITLE = osf3status.sensordisplay[sensorTGT]['title']

                    smallBOX = true
                    osf3status.telemetryBox(posX + boxW / 2 + (theme.colSpacing / 2), posY, boxW / 2 - (theme.colSpacing / 2), boxH / 2 - (theme.colSpacing / 2), sensorTITLE, sensorVALUE, sensorUNIT,
                                           smallBOX, sensorWARN, sensorMIN, sensorMAX)

                    sensorTGT = "temp_esc"
                    sensorVALUE = osf3status.sensordisplay[sensorTGT]['value']
                    sensorUNIT = osf3status.sensordisplay[sensorTGT]['unit']
                    sensorMIN = osf3status.sensordisplay[sensorTGT]['min']
                    sensorMAX = osf3status.sensordisplay[sensorTGT]['max']
                    sensorWARN = osf3status.sensordisplay[sensorTGT]['warn']
                    sensorTITLE = osf3status.sensordisplay[sensorTGT]['title']

                    smallBOX = true
                    osf3status.telemetryBox(posX, posY + boxH / 2 + (theme.colSpacing / 2), boxW / 2 - (theme.colSpacing / 2), boxH / 2 - theme.colSpacing / 2, sensorTITLE, sensorVALUE, sensorUNIT,
                                           smallBOX, sensorWARN, sensorMIN, sensorMAX)

                    sensorTGT = "temp_mcu"
                    sensorVALUE = osf3status.sensordisplay[sensorTGT]['value']
                    sensorUNIT = osf3status.sensordisplay[sensorTGT]['unit']
                    sensorMIN = osf3status.sensordisplay[sensorTGT]['min']
                    sensorMAX = osf3status.sensordisplay[sensorTGT]['max']
                    sensorWARN = osf3status.sensordisplay[sensorTGT]['warn']
                    sensorTITLE = osf3status.sensordisplay[sensorTGT]['title']

                    smallBOX = true
                    osf3status.telemetryBox(posX + boxW / 2 + (theme.colSpacing / 2), posY + boxH / 2 + (theme.colSpacing / 2), boxW / 2 - (theme.colSpacing / 2), boxH / 2 - (theme.colSpacing / 2),
                                           sensorTITLE, sensorVALUE, sensorUNIT, smallBOX, sensorWARN, sensorMIN, sensorMAX)

                end

                if sensorTGT == 'max_current' then

                    sensorTGT = "current"
                    sensorVALUE = osf3status.sensordisplay[sensorTGT]['value']
                    sensorUNIT = osf3status.sensordisplay[sensorTGT]['unit']
                    sensorMIN = osf3status.sensordisplay[sensorTGT]['min']
                    sensorMAX = osf3status.sensordisplay[sensorTGT]['max']
                    sensorWARN = osf3status.sensordisplay[sensorTGT]['warn']
                    sensorTITLE = osf3status.sensordisplay[sensorTGT]['title']

                    if sensorMAX == "-" or sensorMAX == nil then sensorMAX = 0 end

                    smallBOX = false
                    osf3status.telemetryBox(posX, posY, boxW, boxH, "MAX " .. sensorTITLE, sensorMAX, sensorUNIT, smallBOX)

                end

            end

            c = c + 1
        end

        if osf3status.linkUP == 0 then osf3status.noTelem() end

        if osf3status.showLOGS ~= nil then if osf3status.showLOGS then osf3status.logsBOX() end end

    end


end

function osf3status.ReverseTable(t)
    local reversedTable = {}
    local itemCount = #t
    for k, v in ipairs(t) do reversedTable[itemCount + 1 - k] = v end
    return reversedTable
end

function osf3status.getChannelValue(ich)
    local src = system.getSource({category = CATEGORY_CHANNEL, member = (ich - 1), options = 0})
    return math.floor((src:value() / 10.24) + 0.5)
end

function osf3status.getSensors()
    if osf3status.isInConfiguration == true then return osf3status.sensors end

    local tv
    local voltage
    local temp_esc
    local temp_mcu
    local mah
    local mah
    local fuel
    local fm
    local rssi
    local adjSOURCE
    local adjvalue
    local current

    -- lcd.resetFocusTimeout()

    if environment.simulation == true then

        tv = math.random(2100, 2274)
        voltage = tv
        temp_esc = math.random(50, 225) * 10
        temp_mcu = math.random(50, 185) * 10
        mah = math.random(10000, 10100)
        fuel = 55
        fm = "DISABLED"
        rssi = math.random(90, 100)
        adjsource = 0
        adjvalue = 0
        current = 0

        if osf3status.idleupswitchParam ~= nil and armswitchParam ~= nil then
            if osf3status.idleupswitchParam:state() == true and armswitchParam:state() == true then
                current = math.random(100, 120)
                rpm = math.random(90, 100)
            else
                current = 0
                rpm = 0
            end
        end

    elseif osf3status.linkUP ~= 0 then

        local telemetrySOURCE = system.getSource("Rx RSSI1")

        if telemetrySOURCE ~= nil then
            -- we are running crsf
            -- print("CRSF")
            local crsfSOURCE = system.getSource("Vbat")

            if crsfSOURCE ~= nil then
                -- crsf passthru
                voltageSOURCE = system.getSource("Vbat")
                rpmSOURCE = system.getSource("Hspd")
                currentSOURCE = system.getSource("Curr")
                temp_escSOURCE = system.getSource("EscT")
                temp_mcuSOURCE = system.getSource("Tmcu")
                fuelSOURCE = system.getSource("Bat%")
                mahSOURCE = system.getSource("Capa")
                govSOURCE = system.getSource("Gov")
                rssiSOURCE = system.getSource("Rx Quality")
                adjfSOURCE = system.getSource("AdjF")
                adjvSOURCE = system.getSource("AdjV")

                if voltageSOURCE ~= nil then
                    voltage = voltageSOURCE:value()
                    if voltage ~= nil then
                        voltage = voltage * 100
                    else
                        voltage = 0
                    end
                else
                    voltage = 0
                end

                if rpmSOURCE ~= nil then
                    if rpmSOURCE:maximum() == 1000.0 then rpmSOURCE:maximum(65000) end

                    rpm = rpmSOURCE:value()
                    if rpm ~= nil then
                        rpm = rpm
                    else
                        rpm = 0
                    end
                else
                    rpm = 0
                end

                if currentSOURCE ~= nil then
                    if currentSOURCE:maximum() == 50.0 then currentSOURCE:maximum(400.0) end

                    current = currentSOURCE:value()
                    if current ~= nil then
                        current = current * 10
                    else
                        current = 0
                    end
                else
                    current = 0
                end

                if temp_escSOURCE ~= nil then
                    temp_esc = temp_escSOURCE:value()
                    if temp_esc ~= nil then
                        temp_esc = temp_esc * 100
                    else
                        temp_esc = 0
                    end
                else
                    temp_esc = 0
                end

                if temp_mcuSOURCE ~= nil then
                    temp_mcu = temp_mcuSOURCE:value()
                    if temp_mcu ~= nil then
                        temp_mcu = (temp_mcu) * 100
                    else
                        temp_mcu = 0
                    end
                else
                    temp_mcu = 0
                end

                if fuelSOURCE ~= nil then
                    fuel = fuelSOURCE:value()
                    if fuel ~= nil then
                        fuel = fuel
                    else
                        fuel = 0
                    end
                else
                    fuel = 0
                end

                if mahSOURCE ~= nil then
                    mah = mahSOURCE:value()
                    if mah ~= nil then
                        mah = mah
                    else
                        mah = 0
                    end
                else
                    mah = 0
                end

                if govSOURCE ~= nil then
                    govId = govSOURCE:value()

                    -- print(govId)
                    if govId == 0 then
                        govmode = "OFF"
                    elseif govId == 1 then
                        govmode = "IDLE"
                    elseif govId == 2 then
                        govmode = "SPOOLUP"
                    elseif govId == 3 then
                        govmode = "RECOVERY"
                    elseif govId == 4 then
                        govmode = "ACTIVE"
                    elseif govId == 5 then
                        govmode = "THR-OFF"
                    elseif govId == 6 then
                        govmode = "LOST-HS"
                    elseif govId == 7 then
                        govmode = "AUTOROT"
                    elseif govId == 8 then
                        govmode = "BAILOUT"
                    elseif govId == 100 then
                        govmode = "DISABLED"
                    elseif govId == 101 then
                        govmode = "DISARMED"
                    else
                        govmode = "UNKNOWN"
                    end
                else
                    govmode = ""
                end
                if system.getSource({category = CATEGORY_FLIGHT, member = FLIGHT_CURRENT_MODE}):stringValue() then
                    fm = system.getSource({category = CATEGORY_FLIGHT, member = FLIGHT_CURRENT_MODE}):stringValue()
                else
                    fm = ""
                end

                if rssiSOURCE ~= nil then
                    rssi = rssiSOURCE:value()
                    if rssi ~= nil then
                        rssi = rssi
                    else
                        rssi = 0
                    end
                else
                    rssi = 0
                end

                if adjfSOURCE ~= nil then
                    adjfunc = adjfSOURCE:value()
                    if adjfunc ~= nil then
                        adjfunc = adjfunc
                    else
                        adjfunc = 0
                    end
                else
                    adjfunc = 0
                end

                if adjvSOURCE ~= nil then
                    adjvalue = adjvSOURCE:value()
                    if adjvalue ~= nil then
                        adjvalue = adjvalue
                    else
                        adjvalue = 0
                    end
                else
                    adjvalue = 0
                end

            else
                -- LEGACY CRSF REUSE
                voltageSOURCE = system.getSource("Rx Batt")
                rpmSOURCE = system.getSource("GPS Alt")
                currentSOURCE = system.getSource("Rx Curr")
                temp_escSOURCE = system.getSource("GPS Speed")
                temp_mcuSOURCE = system.getSource("GPS Sats")
                fuelSOURCE = system.getSource("Rx Batt%")
                mahSOURCE = system.getSource("Rx Cons")
                govSOURCE = system.getSource("Flight mode")
                rssiSOURCE = system.getSource("Rx Quality")

                if voltageSOURCE ~= nil then
                    voltage = voltageSOURCE:value()
                    if voltage ~= nil then
                        voltage = voltage * 100
                    else
                        voltage = 0
                    end
                else
                    voltage = 0
                end

                if rpmSOURCE ~= nil then
                    if rpmSOURCE:maximum() == 1000.0 then rpmSOURCE:maximum(65000) end

                    rpm = rpmSOURCE:value()
                    if rpm ~= nil then
                        rpm = rpm
                    else
                        rpm = 0
                    end
                else
                    rpm = 0
                end

                if currentSOURCE ~= nil then
                    if currentSOURCE:maximum() == 50.0 then currentSOURCE:maximum(400.0) end

                    current = currentSOURCE:value()
                    if current ~= nil then
                        current = current * 10
                    else
                        current = 0
                    end
                else
                    current = 0
                end

                if temp_escSOURCE ~= nil then
                    temp_esc = temp_escSOURCE:value()
                    if temp_esc ~= nil then
                        temp_esc = temp_esc * 100
                    else
                        temp_esc = 0
                    end
                else
                    temp_esc = 0
                end

                if temp_mcuSOURCE ~= nil then
                    temp_mcu = temp_mcuSOURCE:value()
                    if temp_mcu ~= nil then
                        temp_mcu = (temp_mcu) * 100
                    else
                        temp_mcu = 0
                    end
                else
                    temp_mcu = 0
                end

                if fuelSOURCE ~= nil then
                    fuel = fuelSOURCE:value()
                    if fuel ~= nil then
                        fuel = fuel
                    else
                        fuel = 0
                    end
                else
                    fuel = 0
                end

                if mahSOURCE ~= nil then
                    mah = mahSOURCE:value()
                    if mah ~= nil then
                        mah = mah
                    else
                        mah = 0
                    end
                else
                    mah = 0
                end

                if govSOURCE ~= nil then govmode = govSOURCE:stringValue() end
                if system.getSource({category = CATEGORY_FLIGHT, member = FLIGHT_CURRENT_MODE}):stringValue() then
                    fm = system.getSource({category = CATEGORY_FLIGHT, member = FLIGHT_CURRENT_MODE}):stringValue()
                else
                    fm = ""
                end

                if rssiSOURCE ~= nil then
                    rssi = rssiSOURCE:value()
                    if rssi ~= nil then
                        rssi = rssi
                    else
                        rssi = 0
                    end
                else
                    rssi = 0
                end

                -- note.
                -- need to modify firmware to allow this to work for crsf correctly
                adjsource = 0
                adjvalue = 0
            end

        else
            -- we are run sport	
            -- set sources for everthing below
            -- print("SPORT")

            voltageSOURCE = system.getSource({category = CATEGORY_TELEMETRY_SENSOR, appId = 0x0210})
            rpmSOURCE = system.getSource({category = CATEGORY_TELEMETRY_SENSOR, appId = 0x0500})
            currentSOURCE = system.getSource({category = CATEGORY_TELEMETRY_SENSOR, appId = 0x0200})
            temp_escSOURCE = system.getSource({category = CATEGORY_TELEMETRY_SENSOR, appId = 0x0B70})
            temp_mcuSOURCE = system.getSource({category = CATEGORY_TELEMETRY_SENSOR, appId = 0x0401})
            fuelSOURCE = system.getSource({category = CATEGORY_TELEMETRY_SENSOR, appId = 0x0600})

            govSOURCE = system.getSource({category = CATEGORY_TELEMETRY_SENSOR, appId = 0x5450})
            if govSOURCE == nil then
                govSOURCE = model.createSensor()
                govSOURCE:name("Governor")
                govSOURCE:appId(0x5450)
                govSOURCE:physId(0)
            end

            adjSOURCE = system.getSource({category = CATEGORY_TELEMETRY_SENSOR, appId = 0x5110})
            if adjSOURCE == nil then
                adjSOURCE = model.createSensor()
                adjSOURCE:name("ADJ Source")
                adjSOURCE:appId(0x5110)
                adjSOURCE:physId(0)
            end

            adjVALUE = system.getSource({category = CATEGORY_TELEMETRY_SENSOR, appId = 0x5111})
            if adjVALUE == nil then
                adjVALUE = model.createSensor()
                adjVALUE:name("ADJ Value")
                adjVALUE:appId(0x5111)
                adjVALUE:physId(0)
            end

            mahSOURCE = system.getSource({category = CATEGORY_TELEMETRY_SENSOR, appId = 0x5250})
            if mahSOURCE == nil then
                mahSOURCE = model.createSensor()
                mahSOURCE:name("mAh")
                mahSOURCE:appId(0x5250)
                mahSOURCE:physId(0)
            end

            -- voltageSOURCE = system.getSource("VFAS")
            if voltageSOURCE ~= nil then
                voltage = voltageSOURCE:value()
                if voltage ~= nil then
                    voltage = voltage * 100
                else
                    voltage = 0
                end
            else
                voltage = 0
            end

            if rpmSOURCE ~= nil then
                rpm = rpmSOURCE:value()
                if rpm ~= nil then
                    rpm = rpm
                else
                    rpm = 0
                end
            else
                rpm = 0
            end

            if currentSOURCE ~= nil then
                current = currentSOURCE:value()
                if current ~= nil then
                    current = current * 10
                else
                    current = 0
                end
            else
                current = 0
            end

            if temp_escSOURCE ~= nil then
                temp_esc = temp_escSOURCE:value()
                if temp_esc ~= nil then
                    temp_esc = temp_esc * 100
                else
                    temp_esc = 0
                end
            else
                temp_esc = 0
            end

            if temp_mcuSOURCE ~= nil then
                temp_mcu = temp_mcuSOURCE:value()
                if temp_mcu ~= nil then
                    temp_mcu = temp_mcu * 100
                else
                    temp_mcu = 0
                end
            else
                temp_mcu = 0
            end

            if fuelSOURCE ~= nil then
                fuel = fuelSOURCE:value()
                if fuel ~= nil then
                    fuel = osf3status.round(fuel, 0)
                else
                    fuel = 0
                end
            else
                fuel = 0
            end

            if mahSOURCE ~= nil then
                mah = mahSOURCE:value()
                if mah ~= nil then
                    mah = mah
                else
                    mah = 0
                end
            else
                mah = 0
            end

            if govSOURCE ~= nil then
                govId = govSOURCE:value()

                -- print(govId)
                if govId == 0 then
                    govmode = "OFF"
                elseif govId == 1 then
                    govmode = "IDLE"
                elseif govId == 2 then
                    govmode = "SPOOLUP"
                elseif govId == 3 then
                    govmode = "RECOVERY"
                elseif govId == 4 then
                    govmode = "ACTIVE"
                elseif govId == 5 then
                    govmode = "THR-OFF"
                elseif govId == 6 then
                    govmode = "LOST-HS"
                elseif govId == 7 then
                    govmode = "AUTOROT"
                elseif govId == 8 then
                    govmode = "BAILOUT"
                elseif govId == 100 then
                    govmode = "DISABLED"
                elseif govId == 101 then
                    govmode = "DISARMED"
                else
                    govmode = "UNKNOWN"
                end
            else
                govmode = ""
            end
            if system.getSource({category = CATEGORY_FLIGHT, member = FLIGHT_CURRENT_MODE}):stringValue() then
                fm = system.getSource({category = CATEGORY_FLIGHT, member = FLIGHT_CURRENT_MODE}):stringValue()
            else
                fm = ""
            end

            if adjSOURCE ~= nil then adjsource = adjSOURCE:value() end

            if adjVALUE ~= nil then adjvalue = adjVALUE:value() end

            rssi = osf3status.linkUP

        end
    else
        -- we have no link.  do something
        -- print("NO LINK")
        -- keep looking for new sensor
        osf3status.rssiSensor = osf3status.getRssiSensor()

        voltage = 0
        rpm = 0
        current = 0
        temp_esc = 0
        temp_mcu = 0
        fuel = 0
        mah = 0
        govmode = "-"
        fm = "-"
        rssi = osf3status.linkUP
        adjsource = 0
        adjvalue = 0
    end

    -- calc fuel percentage if needed
    if osf3status.calcfuelParam == true then

        if osf3status.btypeParam == 0 then
            -- LiPo
            maxCellVoltage = 4.2
            minCellVoltage = 3.2
        elseif osf3status.btypeParam == 1 then
            -- LiHv
            maxCellVoltage = 4.35
            minCellVoltage = 3.4
        elseif osf3status.btypeParam == 2 then
            -- Lion
            maxCellVoltage = 2.4
            minCellVoltage = 3
        elseif osf3status.btypeParam == 3 then
            -- LiFe
            maxCellVoltage = 3.65
            minCellVoltage = 2.5
        elseif osf3status.btypeParam == 4 then
            -- NiMh
            maxCellVoltage = 1.2
            minCellVoltage = 0.9
        else
            -- LiPo (default)
            maxCellVoltage = 4.196
            minCellVoltage = 3.2
        end

        -- maxCellVoltage = 4.196
        -- minCellVoltage = 3.2
        avgCellVoltage = (voltage / 100) / osf3status.cellsParam
        batteryPercentage = 100 * (avgCellVoltage - minCellVoltage) / ((maxCellVoltage + (0.00000001 * osf3status.cellsParam)) - minCellVoltage)
        fuel = batteryPercentage
        fuel = osf3status.round(fuel, 0)

        if fuel > 100 then fuel = 100 end

    end

    -- convert from C to F
    -- Divide by 5, then multiply by 9, then add 32
    if osf3status.tempconvertParamMCU == 2 then
        temp_mcu = ((temp_mcu / 5) * 9) + 32
        temp_mcu = osf3status.round(temp_mcu, 0)
    end
    -- convert from F to C
    -- Deduct 32, then multiply by 5, then divide by 9
    if osf3status.tempconvertParamMCU == 3 then
        temp_mcu = ((temp_mcu - 32) * 5) / 9
        temp_mcu = osf3status.round(temp_mcu, 0)
    end

    -- convert from C to F
    -- Divide by 5, then multiply by 9, then add 32
    if osf3status.tempconvertParamESC == 2 then
        temp_esc = ((temp_esc / 5) * 9) + 32
        temp_esc = osf3status.round(temp_esc, 0)
    end
    -- convert from F to C
    -- Deduct 32, then multiply by 5, then divide by 9
    if osf3status.tempconvertParamESC == 3 then
        temp_esc = ((temp_esc - 32) * 5) / 9
        temp_esc = osf3status.round(temp_esc, 0)
    end

    -- set flag to osf3status.refresh screen or not

    voltage = osf3status.kalmanVoltage(voltage, osf3status.sensors.voltage)
    voltage = osf3status.round(voltage, 0)

    rpm = osf3status.kalmanRPM(rpm, osf3status.sensors.rpm)
    rpm = osf3status.round(rpm, 0)

    temp_mcu = osf3status.kalmanTempMCU(temp_mcu, osf3status.sensors.temp_mcu)
    temp_mcu = osf3status.round(temp_mcu, 0)

    temp_esc = osf3status.kalmanTempESC(temp_esc, osf3status.sensors.temp_esc)
    temp_esc = osf3status.round(temp_esc, 0)

    current = osf3status.kalmanCurrent(current, osf3status.sensors.current)
    current = osf3status.round(current, 0)

    rssi = osf3status.kalmanRSSI(rssi, osf3status.sensors.rssi)
    rssi = osf3status.round(rssi, 0)

    -- do / dont do voltage based on stick position
    if osf3status.lowvoltagStickParam == nil then osf3status.lowvoltagStickParam = 0 end
    if osf3status.lowvoltagStickCutoffParam == nil then osf3status.lowvoltagStickCutoffParam = 80 end

    if (osf3status.lowvoltagStickParam ~= 0) then
        osf3status.lvStickannouncement = false
        for i, v in ipairs(osf3status.lvStickOrder[osf3status.lowvoltagStickParam]) do
            if osf3status.lvStickannouncement == false then -- we skip more if any stick has resulted in announcement
                if math.abs(osf3status.getChannelValue(v)) >= osf3status.lowvoltagStickCutoffParam then osf3status.lvStickannouncement = true end
            end
        end
    end

    -- intercept governor for non rf governor helis
    if armswitchParam ~= nil or osf3status.idleupswitchParam ~= nil then
        if osf3status.govmodeParam == 1 then
            if armswitchParam:state() == true then
                govmode = "ARMED"
                fm = "ARMED"
            else
                govmode = "DISARMED"
                fm = "DISARMED"
            end

            if armswitchParam:state() == true then
                if osf3status.idleupswitchParam:state() == true then
                    govmode = "ACTIVE"
                    fm = "ACTIVE"
                else
                    govmode = "THR-OFF"
                    fm = "THR-OFF"
                end

            end
        end

    end

    if osf3status.sensors.voltage ~= voltage then osf3status.refresh = true end
    if osf3status.sensors.rpm ~= rpm then osf3status.refresh = true end
    if osf3status.sensors.current ~= current then osf3status.refresh = true end
    if osf3status.sensors.temp_esc ~= temp_esc then osf3status.refresh = true end
    if osf3status.sensors.temp_mcu ~= temp_mcu then osf3status.refresh = true end
    if osf3status.sensors.govmode ~= govmode then osf3status.refresh = true end
    if osf3status.sensors.fuel ~= fuel then osf3status.refresh = true end
    if osf3status.sensors.mah ~= mah then osf3status.refresh = true end
    if osf3status.sensors.rssi ~= rssi then osf3status.refresh = true end
    if osf3status.sensors.fm ~= CURRENT_FLIGHT_MODE then osf3status.refresh = true end

    ret = {
        fm = fm,
        govmode = govmode,
        voltage = voltage,
        rpm = rpm,
        current = current,
        temp_esc = temp_esc,
        temp_mcu = temp_mcu,
        fuel = fuel,
        mah = mah,
        rssi = rssi,
        adjsource = adjsource,
        adjvalue = adjvalue
    }
    osf3status.sensors = ret

    return ret
end

function osf3status.sensorsMAXMIN(sensors)

    if osf3status.linkUP ~= 0 and osf3status.theTIME ~= nil and osf3status.idleupdelayParam ~= nil then

        -- hold back - to early to get a reading
        if osf3status.theTIME <= osf3status.idleupdelayParam then
            osf3status.sensorVoltageMin = 0
            osf3status.sensorVoltageMax = 0
            osf3status.sensorFuelMin = 0
            osf3status.sensorFuelMax = 0
            osf3status.sensorRPMMin = 0
            osf3status.sensorRPMMax = 0
            osf3status.sensorCurrentMin = 0
            osf3status.sensorCurrentMax = 0
            osf3status.sensorRSSIMin = 0
            osf3status.sensorRSSIMax = 0
            osf3status.sensorTempESCMin = 0
            osf3status.sensorTempMCUMax = 0
        end

        -- prob put in a screen/audio alert for initialising
        if osf3status.theTIME >= 1 and osf3status.theTIME < osf3status.idleupdelayParam then end

        if osf3status.theTIME >= osf3status.idleupdelayParam then

            local idleupdelayOFFSET = 2

            -- record initial parameters for max/min
            if osf3status.theTIME >= osf3status.idleupdelayParam and osf3status.theTIME <= (osf3status.idleupdelayParam + idleupdelayOFFSET) then
                osf3status.sensorVoltageMin = sensors.voltage
                osf3status.sensorVoltageMax = sensors.voltage
                osf3status.sensorFuelMin = sensors.fuel
                osf3status.sensorFuelMax = sensors.fuel
                osf3status.sensorRPMMin = sensors.rpm
                osf3status.sensorRPMMax = sensors.rpm
                if sensors.current == 0 then
                    osf3status.sensorCurrentMin = 1
                else
                    osf3status.sensorCurrentMin = sensors.current
                end
                osf3status.sensorCurrentMax = sensors.current

                osf3status.sensorRSSIMin = sensors.rssi
                osf3status.sensorRSSIMax = sensors.rssi
                osf3status.sensorTempESCMin = sensors.temp_esc
                osf3status.sensorTempESCMax = sensors.temp_esc
                osf3status.sensorTempMCUMin = sensors.temp_mcu
                osf3status.sensorTempMCUMax = sensors.temp_mcu
                motorNearlyActive = 0
            end

            if osf3status.theTIME >= (osf3status.idleupdelayParam + idleupdelayOFFSET) and osf3status.idleupswitchParam:state() == true then

                if sensors.voltage < osf3status.sensorVoltageMin then osf3status.sensorVoltageMin = sensors.voltage end
                if sensors.voltage > osf3status.sensorVoltageMax then osf3status.sensorVoltageMax = sensors.voltage end

                if sensors.fuel < osf3status.sensorFuelMin then osf3status.sensorFuelMin = sensors.fuel end
                if sensors.fuel > osf3status.sensorFuelMax then osf3status.sensorFuelMax = sensors.fuel end

                if sensors.rpm < osf3status.sensorRPMMin then osf3status.sensorRPMMin = sensors.rpm end
                if sensors.rpm > osf3status.sensorRPMMax then osf3status.sensorRPMMax = sensors.rpm end
                if sensors.current < osf3status.sensorCurrentMin then
                    osf3status.sensorCurrentMin = sensors.current
                    if osf3status.sensorCurrentMin == 0 then osf3status.sensorCurrentMin = 1 end
                end
                if sensors.current > osf3status.sensorCurrentMax then osf3status.sensorCurrentMax = sensors.current end
                if sensors.rssi < osf3status.sensorRSSIMin then osf3status.sensorRSSIMin = sensors.rssi end
                if sensors.rssi > osf3status.sensorRSSIMax then osf3status.sensorRSSIMax = sensors.rssi end
                if sensors.temp_esc < osf3status.sensorTempESCMin then osf3status.sensorTempESCMin = sensors.temp_esc end
                if sensors.temp_esc > osf3status.sensorTempESCMax then osf3status.sensorTempESCMax = sensors.temp_esc end
                osf3status.motorWasActive = true
            end

        end

        -- store the last values
        if osf3status.motorWasActive and osf3status.idleupswitchParam:state() == false then

            osf3status.motorWasActive = false

            local maxminFinals = osf3status.readHistory()

            if osf3status.sensorCurrentMin == 0 then
                osf3status.sensorCurrentMinAlt = 1
            else
                osf3status.sensorCurrentMinAlt = osf3status.sensorCurrentMin
            end
            if osf3status.sensorCurrentMax == 0 then
                osf3status.sensorCurrentMaxAlt = 1
            else
                osf3status.sensorCurrentMaxAlt = osf3status.sensorCurrentMax
            end

            local maxminRow = osf3status.theTIME .. "," .. osf3status.sensorVoltageMin .. "," .. osf3status.sensorVoltageMax .. "," .. osf3status.sensorFuelMin .. "," .. osf3status.sensorFuelMax .. "," ..
                                  osf3status.sensorRPMMin .. "," .. osf3status.sensorRPMMax .. "," .. osf3status.sensorCurrentMin .. "," .. osf3status.sensorCurrentMax .. "," .. osf3status.sensorRSSIMin ..
                                  "," .. osf3status.sensorRSSIMax .. "," .. osf3status.sensorTempMCUMin .. "," .. osf3status.sensorTempMCUMax .. "," .. osf3status.sensorTempESCMin .. "," ..
                                  osf3status.sensorTempESCMax

            -- print("Last data: ".. maxminRow )

            table.insert(maxminFinals, 1, maxminRow)
            if tablelength(maxminFinals) >= 9 then table.remove(maxminFinals, 9) end

            name = string.gsub(model.name(), "%s+", "_")
            name = string.gsub(name, "%W", "_")

            file = "logs/" .. name .. ".log"
            f = io.open(file, 'w')
            f:write("")
            io.close(f)

            -- print("Writing history to: " .. file)

            f = io.open(file, 'a')
            for k, v in ipairs(maxminFinals) do
                if v ~= nil then
                    v = v:gsub("%s+", "")
                    -- if v ~= "" then
                    -- print(v)
                    f:write(v .. "\n")
                    -- end
                end
            end
            io.close(f)

            osf3status.readLOGS = false

        end

    else
        osf3status.sensorVoltageMax = 0
        osf3status.sensorVoltageMin = 0
        osf3status.sensorFuelMin = 0
        osf3status.sensorFuelMax = 0
        osf3status.sensorRPMMin = 0
        osf3status.sensorRPMMax = 0
        osf3status.sensorCurrentMin = 0
        osf3status.sensorCurrentMax = 0
        osf3status.sensorTempESCMin = 0
        osf3status.sensorTempESCMax = 0
    end

end

function tablelength(T)
    local count = 0
    for _ in pairs(T) do count = count + 1 end
    return count
end

function print_r(arr, indentLevel)
    local str = ""
    local indentStr = "#"

    if (indentLevel == nil) then
        print(print_r(arr, 0))
        return
    end

    for i = 0, indentLevel do indentStr = indentStr .. "\t" end

    for index, value in ipairs(arr) do
        if type(value) == "table" then
            str = str .. indentStr .. index .. ": \n" .. print_r(value, (indentLevel + 1))
        else
            str = str .. indentStr .. index .. ": " .. value .. "\n"
        end
    end
    return str
end

function osf3status.updateFILTERING()
    if osf3status.filteringParam == 2 then
        -- print("Filtering: medium")
        osf3status.voltageNoiseQ = 150
        osf3status.fuelNoiseQ = 150
        osf3status.rpmNoiseQ = 150
        osf3status.temp_mcuNoiseQ = 150
        osf3status.temp_escNoiseQ = 150
        osf3status.rssiNoiseQ = 150
        osf3status.currentNoiseQ = 150
    elseif osf3status.filteringParam == 3 then
        -- print("Filtering: high")
        osf3status.voltageNoiseQ = 200
        osf3status.fuelNoiseQ = 200
        osf3status.rpmNoiseQ = 200
        osf3status.temp_mcuNoiseQ = 200
        osf3status.temp_escNoiseQ = 200
        osf3status.rssiNoiseQ = 200
        osf3status.currentNoiseQ = 200
    else
        -- print("Filtering: low")
        osf3status.voltageNoiseQ = 100
        osf3status.fuelNoiseQ = 100
        osf3status.rpmNoiseQ = 100
        osf3status.temp_mcuNoiseQ = 100
        osf3status.temp_escNoiseQ = 100
        osf3status.rssiNoiseQ = 100
        osf3status.currentNoiseQ = 100
    end
end

function osf3status.kalmanCurrent(new, old)
    if old == nil then old = 0 end
    if new == nil then new = 0 end
    x = old
    local p = 100
    local k = 0
    p = p + 0.05
    k = p / (p + osf3status.currentNoiseQ)
    x = x + k * (new - x)
    p = (1 - k) * p
    return x
end

function osf3status.kalmanRSSI(new, old)
    if old == nil then old = 0 end
    if new == nil then new = 0 end
    x = old
    local p = 100
    local k = 0
    p = p + 0.05
    k = p / (p + osf3status.rssiNoiseQ)
    x = x + k * (new - x)
    p = (1 - k) * p
    return x
end

function osf3status.kalmanTempMCU(new, old)
    if old == nil then old = 0 end
    if new == nil then new = 0 end
    x = old
    local p = 100
    local k = 0
    p = p + 0.05
    k = p / (p + osf3status.temp_mcuNoiseQ)
    x = x + k * (new - x)
    p = (1 - k) * p
    return x
end

function osf3status.kalmanTempESC(new, old)
    if old == nil then old = 0 end
    if new == nil then new = 0 end
    x = old
    local p = 100
    local k = 0
    p = p + 0.05
    k = p / (p + osf3status.temp_escNoiseQ)
    x = x + k * (new - x)
    p = (1 - k) * p
    return x
end

function osf3status.kalmanRPM(new, old)
    if old == nil then old = 0 end
    if new == nil then new = 0 end
    x = old
    local p = 100
    local k = 0
    p = p + 0.05
    k = p / (p + osf3status.rpmNoiseQ)
    x = x + k * (new - x)
    p = (1 - k) * p
    return x
end

function osf3status.kalmanVoltage(new, old)
    if old == nil then old = 0 end
    if new == nil then new = 0 end
    x = old
    local p = 100
    local k = 0
    p = p + 0.05
    k = p / (p + osf3status.voltageNoiseQ)
    x = x + k * (new - x)
    p = (1 - k) * p
    return x
end

function osf3status.sensorMakeNumber(x)
    if x == nil or x == "" then x = 0 end

    x = string.gsub(x, "%D+", "")
    x = tonumber(x)
    if x == nil or x == "" then x = 0 end

    return x
end

function osf3status.round(number, precision)
    local fmtStr = string.format("%%0.%sf", precision)
    number = string.format(fmtStr, number)
    number = tonumber(number)
    return number
end

function osf3status.SecondsToClock(seconds)
    local seconds = tonumber(seconds)

    if seconds <= 0 then
        return "00:00:00"
    else
        hours = string.format("%02.f", math.floor(seconds / 3600))
        mins = string.format("%02.f", math.floor(seconds / 60 - (hours * 60)))
        secs = string.format("%02.f", math.floor(seconds - hours * 3600 - mins * 60))
        return hours .. ":" .. mins .. ":" .. secs
    end
end

function osf3status.SecondsToClockAlt(seconds)
    local seconds = tonumber(seconds)

    if seconds <= 0 then
        return "00:00"
    else
        hours = string.format("%02.f", math.floor(seconds / 3600))
        mins = string.format("%02.f", math.floor(seconds / 60 - (hours * 60)))
        secs = string.format("%02.f", math.floor(seconds - hours * 3600 - mins * 60))
        return mins .. ":" .. secs
    end
end

function osf3status.SecondsFromTime(seconds)
    local seconds = tonumber(seconds)

    if seconds <= 0 then
        return "0"
    else
        hours = string.format("%02.f", math.floor(seconds / 3600))
        mins = string.format("%02.f", math.floor(seconds / 60 - (hours * 60)))
        secs = string.format("%02.f", math.floor(seconds - hours * 3600 - mins * 60))
        return tonumber(secs)
    end
end

function osf3status.spairs(t, order)
    -- collect the keys
    local keys = {}
    for k in pairs(t) do keys[#keys + 1] = k end

    -- if order function given, sort by it by passing the table and keys a, b,
    -- otherwise just sort the keys 
    if order then
        table.sort(keys, function(a, b)
            return order(t, a, b)
        end)
    else
        table.sort(keys)
    end

    -- return the iterator function
    local i = 0
    return function()
        i = i + 1
        if keys[i] then return keys[i], t[keys[i]] end
    end
end

function osf3status.explode(inputstr, sep)
    if sep == nil then sep = "%s" end
    local t = {}
    for str in string.gmatch(inputstr, "([^" .. sep .. "]+)") do table.insert(t, str) end
    return t
end

function osf3status.ReadLine(f, line)
    local i = 1 -- line counter
    for l in f:lines() do -- lines iterator, "l" returns the line
        if i == line then return l end -- we found this line, return it
        i = i + 1 -- counting lines
    end
    return "" -- Doesn't have that line
end

function osf3status.readHistory()

    local history = {}
    -- print("Reading history")

    name = string.gsub(model.name(), "%s+", "_")
    name = string.gsub(name, "%W", "_")

    file = "logs/" .. name .. ".log"
    local f = io.open(file, "rb")

    if f ~= nil then
        -- file exists
        local rData
        c = 0
        tc = 1
        while c <= 10 do
            if c == 0 then
                rData = io.read(f, "l")
            else
                rData = io.read(f, "L")
            end
            if rData ~= "" or rData ~= nil then
                history[tc] = rData
                tc = tc + 1
            end
            c = c + 1
        end
        io.close(f)

    else
        return history
    end

    return history

end

function osf3status.read()
    osf3status.govmodeParam = storage.read("mem1")
    osf3status.btypeParam = storage.read("mem2")
    osf3status.lowfuelParam = storage.read("mem3")
    osf3status.alertintParam = storage.read("mem4")
    osf3status.alrthptParam = storage.read("mem5")
    osf3status.maxminParam = storage.read("mem6")
    osf3status.titleParam = storage.read("mem7")
    osf3status.cellsParam = storage.read("mem8")
    osf3status.announcementVoltageSwitchParam = storage.read("mem9")
    osf3status.govmodeParam = storage.read("mem10")
    osf3status.rpmAlertsParam = storage.read("mem11")
    osf3status.rpmAlertsPercentageParam = storage.read("mem12")
    osf3status.adjFunctionParam = storage.read("mem13") -- spare
    osf3status.announcementRPMSwitchParam = storage.read("mem14")
    osf3status.announcementCurrentSwitchParam = storage.read("mem15")
    osf3status.announcementFuelSwitchParam = storage.read("mem16")
    osf3status.announcementLQSwitchParam = storage.read("mem17")
    osf3status.announcementESCSwitchParam = storage.read("mem18")
    osf3status.announcementMCUSwitchParam = storage.read("mem19")
    osf3status.announcementTimerSwitchParam = storage.read("mem20")
    osf3status.filteringParam = storage.read("mem21")
    osf3status.sagParam = storage.read("mem22")
    osf3status.lowvoltagsenseParam = storage.read("mem23")
    osf3status.announcementIntervalParam = storage.read("mem24")
    osf3status.lowVoltageGovernorParam = storage.read("mem25")
    osf3status.lowvoltagStickParam = storage.read("mem26")
    osf3status.quadBoxParam = storage.read("mem27") 
    osf3status.lowvoltagStickCutoffParam = storage.read("mem28")
    osf3status.governorUNKNOWNParam = storage.read("mem29")
    osf3status.governorDISARMEDParam = storage.read("mem30")
    osf3status.governorDISABLEDParam = storage.read("mem31")
    osf3status.governorBAILOUTParam = storage.read("mem32")
    osf3status.governorAUTOROTParam = storage.read("mem33")
    osf3status.governorLOSTHSParam = storage.read("mem34")
    osf3status.governorTHROFFParam = storage.read("mem35")
    osf3status.governorACTIVEParam = storage.read("mem36")
    osf3status.governorRECOVERYParam = storage.read("mem37")
    osf3status.governorSPOOLUPParam = storage.read("mem38")
    osf3status.governorIDLEParam = storage.read("mem39")
    osf3status.governorOFFParam = storage.read("mem40")
    osf3status.alertonParam = storage.read("mem41")
    osf3status.calcfuelParam = storage.read("mem42")
    osf3status.tempconvertParamESC = storage.read("mem43")
    osf3status.tempconvertParamMCU = storage.read("mem44")
    osf3status.idleupswitchParam = storage.read("mem45")
    armswitchParam = storage.read("mem46")
    osf3status.idleupdelayParam = storage.read("mem47")
    osf3status.switchIdlelowParam = storage.read("mem48")
    osf3status.switchIdlemediumParam = storage.read("mem49")
    osf3status.switchIdlehighParam = storage.read("mem50")
    osf3status.switchrateslowParam = storage.read("mem51")
    osf3status.switchratesmediumParam = storage.read("mem52")
    osf3status.switchrateshighParam = storage.read("mem53")
    osf3status.switchrescueonParam = storage.read("mem54")
    osf3status.switchrescueoffParam = storage.read("mem55")
    osf3status.switchbblonParam = storage.read("mem56")
    osf3status.switchbbloffParam = storage.read("mem57")
    osf3status.layoutBox1Param = storage.read("mem58")
    osf3status.layoutBox2Param = storage.read("mem59")
    osf3status.layoutBox3Param = storage.read("mem60")
    osf3status.layoutBox4Param = storage.read("mem61")
    osf3status.layoutBox5Param = storage.read("mem62")
    osf3status.layoutBox6Param = storage.read("mem63")
    osf3status.timeralarmVibrateParam = storage.read("mem64")
    osf3status.timeralarmParam = storage.read("mem65")
    osf3status.statusColorParam = storage.read("mem66")

    if osf3status.layoutBox1Param == nil then osf3status.layoutBox1Param = 11 end
    if osf3status.layoutBox2Param == nil then osf3status.layoutBox2Param = 2 end
    if osf3status.layoutBox3Param == nil then osf3status.layoutBox3Param = 3 end
    if osf3status.layoutBox4Param == nil then osf3status.layoutBox4Param = 12 end
    if osf3status.layoutBox5Param == nil then osf3status.layoutBox5Param = 4 end
    if osf3status.layoutBox6Param == nil then osf3status.layoutBox6Param = 5 end

    osf3status.resetALL()
    osf3status.updateFILTERING()
end

function osf3status.write()
    storage.write("mem1", osf3status.govmodeParam)
    storage.write("mem2", osf3status.btypeParam)
    storage.write("mem3", osf3status.lowfuelParam)
    storage.write("mem4", osf3status.alertintParam)
    storage.write("mem5", osf3status.alrthptParam)
    storage.write("mem6", osf3status.maxminParam)
    storage.write("mem7", osf3status.titleParam)
    storage.write("mem8", osf3status.cellsParam)
    storage.write("mem9", osf3status.announcementVoltageSwitchParam)
    storage.write("mem10", osf3status.govmodeParam)
    storage.write("mem11", osf3status.rpmAlertsParam)
    storage.write("mem12", osf3status.rpmAlertsPercentageParam)
    storage.write("mem13", osf3status.adjFunctionParam)  -- spare
    storage.write("mem14", osf3status.announcementRPMSwitchParam)
    storage.write("mem15", osf3status.announcementCurrentSwitchParam)
    storage.write("mem16", osf3status.announcementFuelSwitchParam)
    storage.write("mem17", osf3status.announcementLQSwitchParam)
    storage.write("mem18", osf3status.announcementESCSwitchParam)
    storage.write("mem19", osf3status.announcementMCUSwitchParam)
    storage.write("mem20", osf3status.announcementTimerSwitchParam)
    storage.write("mem21", osf3status.filteringParam)
    storage.write("mem22", osf3status.sagParam)
    storage.write("mem23", osf3status.lowvoltagsenseParam)
    storage.write("mem24", osf3status.announcementIntervalParam)
    storage.write("mem25", osf3status.lowVoltageGovernorParam)
    storage.write("mem26", osf3status.lowvoltagStickParam)
    storage.write("mem27", osf3status.quadBoxParam) 
    storage.write("mem28", osf3status.lowvoltagStickCutoffParam)
    storage.write("mem29", osf3status.governorUNKNOWNParam)
    storage.write("mem30", osf3status.governorDISARMEDParam)
    storage.write("mem31", osf3status.governorDISABLEDParam)
    storage.write("mem32", osf3status.governorBAILOUTParam)
    storage.write("mem33", osf3status.governorAUTOROTParam)
    storage.write("mem34", osf3status.governorLOSTHSParam)
    storage.write("mem35", osf3status.governorTHROFFParam)
    storage.write("mem36", osf3status.governorACTIVEParam)
    storage.write("mem37", osf3status.governorRECOVERYParam)
    storage.write("mem38", osf3status.governorSPOOLUPParam)
    storage.write("mem39", osf3status.governorIDLEParam)
    storage.write("mem40", osf3status.governorOFFParam)
    storage.write("mem41", osf3status.alertonParam)
    storage.write("mem42", osf3status.calcfuelParam)
    storage.write("mem43", osf3status.tempconvertParamESC)
    storage.write("mem44", osf3status.tempconvertParamMCU)
    storage.write("mem45", osf3status.idleupswitchParam)
    storage.write("mem46", armswitchParam)
    storage.write("mem47", osf3status.idleupdelayParam)
    storage.write("mem48", osf3status.switchIdlelowParam)
    storage.write("mem49", osf3status.switchIdlemediumParam)
    storage.write("mem50", osf3status.switchIdlehighParam)
    storage.write("mem51", osf3status.switchrateslowParam)
    storage.write("mem52", osf3status.switchratesmediumParam)
    storage.write("mem53", osf3status.switchrateshighParam)
    storage.write("mem54", osf3status.switchrescueonParam)
    storage.write("mem55", osf3status.switchrescueoffParam)
    storage.write("mem56", osf3status.switchbblonParam)
    storage.write("mem57", osf3status.switchbbloffParam)
    storage.write("mem58", osf3status.layoutBox1Param)
    storage.write("mem59", osf3status.layoutBox2Param)
    storage.write("mem60", osf3status.layoutBox3Param)
    storage.write("mem61", osf3status.layoutBox4Param)
    storage.write("mem62", osf3status.layoutBox5Param)
    storage.write("mem63", osf3status.layoutBox6Param)
    storage.write("mem64", osf3status.timeralarmVibrateParam)
    storage.write("mem65", osf3status.timeralarmParam)
    storage.write("mem66", osf3status.statusColorParam)

    osf3status.updateFILTERING()
end

function osf3status.playCurrent(widget)
    if osf3status.announcementCurrentSwitchParam ~= nil then
        if osf3status.announcementCurrentSwitchParam:state() then
            osf3status.currenttime.currentannouncementTimer = true
            currentDoneFirst = false
        else
            osf3status.currenttime.currentannouncementTimer = false
            currentDoneFirst = true
        end

        if osf3status.isInConfiguration == false then
            if osf3status.sensors.current ~= nil then
                if osf3status.currenttime.currentannouncementTimer == true then
                    -- start timer
                    if osf3status.currenttime.currentannouncementTimerStart == nil and currentDoneFirst == false then
                        osf3status.currenttime.currentannouncementTimerStart = os.time()
                        osf3status.currenttime.currentaudioannouncementCounter = os.clock()
                        -- print ("Play Current Alert (first)")
                        system.playNumber(osf3status.sensors.current / 10, UNIT_AMPERE, 2)
                        currentDoneFirst = true
                    end
                else
                    osf3status.currenttime.currentannouncementTimerStart = nil
                end

                if osf3status.currenttime.currentannouncementTimerStart ~= nil then
                    if currentDoneFirst == false then
                        if ((tonumber(os.clock()) - tonumber(osf3status.currenttime.currentaudioannouncementCounter)) >= osf3status.announcementIntervalParam) then
                            -- print ("Play Current Alert (repeat)")
                            osf3status.currenttime.currentaudioannouncementCounter = os.clock()
                            system.playNumber(osf3status.sensors.current / 10, UNIT_AMPERE, 2)
                        end
                    end
                else
                    -- stop timer
                    osf3status.currenttime.currentannouncementTimerStart = nil
                end
            end
        end
    end
end

function osf3status.playLQ(widget)
    if osf3status.announcementLQSwitchParam ~= nil then
        if osf3status.announcementLQSwitchParam:state() then
            osf3status.lqtime.lqannouncementTimer = true
            lqDoneFirst = false
        else
            osf3status.lqtime.lqannouncementTimer = false
            lqDoneFirst = true
        end

        if osf3status.isInConfiguration == false then
            if osf3status.sensors.rssi ~= nil then
                if osf3status.lqtime.lqannouncementTimer == true then
                    -- start timer
                    if osf3status.lqtime.lqannouncementTimerStart == nil and lqDoneFirst == false then
                        osf3status.lqtime.lqannouncementTimerStart = os.time()
                        osf3status.lqtime.lqaudioannouncementCounter = os.clock()
                        -- print ("Play LQ Alert (first)")
                        system.playFile("sounds/alerts/lq.wav")
                        system.playNumber(osf3status.sensors.rssi, UNIT_PERCENT, 2)
                        lqDoneFirst = true
                    end
                else
                    osf3status.lqtime.lqannouncementTimerStart = nil
                end

                if osf3status.lqtime.lqannouncementTimerStart ~= nil then
                    if lqDoneFirst == false then
                        if ((tonumber(os.clock()) - tonumber(osf3status.lqtime.lqaudioannouncementCounter)) >= osf3status.announcementIntervalParam) then
                            osf3status.lqtime.lqaudioannouncementCounter = os.clock()
                            -- print ("Play LQ Alert (repeat)")
                            system.playFile("sounds/alerts/lq.wav")
                            system.playNumber(osf3status.sensors.rssi, UNIT_PERCENT, 2)
                        end
                    end
                else
                    -- stop timer
                    osf3status.lqtime.lqannouncementTimerStart = nil
                end
            end
        end
    end
end

function osf3status.playMCU(widget)
    if osf3status.announcementMCUSwitchParam ~= nil then
        if osf3status.announcementMCUSwitchParam:state() then
            osf3status.mcutime.mcuannouncementTimer = true
            mcuDoneFirst = false
        else
            osf3status.mcutime.mcuannouncementTimer = false
            mcuDoneFirst = true
        end

        if osf3status.isInConfiguration == false then
            if osf3status.sensors.temp_mcu ~= nil then
                if osf3status.mcutime.mcuannouncementTimer == true then
                    -- start timer
                    if osf3status.mcutime.mcuannouncementTimerStart == nil and mcuDoneFirst == false then
                        osf3status.mcutime.mcuannouncementTimerStart = os.time()
                        osf3status.mcutime.mcuaudioannouncementCounter = os.clock()
                        -- print ("Playing MCU (first)")
                        system.playFile("sounds/alerts/mcu.wav")
                        system.playNumber(osf3status.sensors.temp_mcu / 100, UNIT_DEGREE, 2)
                        mcuDoneFirst = true
                    end
                else
                    osf3status.mcutime.mcuannouncementTimerStart = nil
                end

                if osf3status.mcutime.mcuannouncementTimerStart ~= nil then
                    if mcuDoneFirst == false then
                        if ((tonumber(os.clock()) - tonumber(osf3status.mcutime.mcuaudioannouncementCounter)) >= osf3status.announcementIntervalParam) then
                            osf3status.mcutime.mcuaudioannouncementCounter = os.clock()
                            -- print ("Playing MCU (repeat)")
                            system.playFile("sounds/alerts/mcu.wav")
                            system.playNumber(osf3status.sensors.temp_mcu / 100, UNIT_DEGREE, 2)
                        end
                    end
                else
                    -- stop timer
                    osf3status.mcutime.mcuannouncementTimerStart = nil
                end
            end
        end
    end
end

function osf3status.playESC(widget)
    if osf3status.announcementESCSwitchParam ~= nil then
        if osf3status.announcementESCSwitchParam:state() then
            osf3status.esctime.escannouncementTimer = true
            escDoneFirst = false
        else
            osf3status.esctime.escannouncementTimer = false
            escDoneFirst = true
        end

        if osf3status.isInConfiguration == false then
            if osf3status.sensors.temp_esc ~= nil then
                if osf3status.esctime.escannouncementTimer == true then
                    -- start timer
                    if osf3status.esctime.escannouncementTimerStart == nil and escDoneFirst == false then
                        osf3status.esctime.escannouncementTimerStart = os.time()
                        osf3status.esctime.escaudioannouncementCounter = os.clock()
                        -- print ("Playing ESC (first)")
                        system.playFile("sounds/alerts/esc.wav")
                        system.playNumber(osf3status.sensors.temp_esc / 100, UNIT_DEGREE, 2)
                        escDoneFirst = true
                    end
                else
                    osf3status.esctime.escannouncementTimerStart = nil
                end

                if osf3status.esctime.escannouncementTimerStart ~= nil then
                    if escDoneFirst == false then
                        if ((tonumber(os.clock()) - tonumber(osf3status.esctime.escaudioannouncementCounter)) >= osf3status.announcementIntervalParam) then
                            osf3status.esctime.escaudioannouncementCounter = os.clock()
                            -- print ("Playing ESC (repeat)")
                            system.playFile("sounds/alerts/esc.wav")
                            system.playNumber(osf3status.sensors.temp_esc / 100, UNIT_DEGREE, 2)
                        end
                    end
                else
                    -- stop timer
                    osf3status.esctime.escannouncementTimerStart = nil
                end
            end
        end
    end
end

function osf3status.playTIMERALARM(widget)
    if osf3status.theTIME ~= nil and osf3status.timeralarmParam ~= nil and osf3status.timeralarmParam ~= 0 then

        -- reset timer Delay
        if osf3status.theTIME > osf3status.timeralarmParam + 2 then osf3status.timerAlarmPlay = true end
        -- trigger first timer
        if osf3status.timerAlarmPlay == true then
            if osf3status.theTIME >= osf3status.timeralarmParam and osf3status.theTIME <= osf3status.timeralarmParam + 1 then

                system.playFile("sounds/alerts/beep.wav")

                hours = string.format("%02.f", math.floor(osf3status.theTIME / 3600))
                mins = string.format("%02.f", math.floor(osf3status.theTIME / 60 - (hours * 60)))
                secs = string.format("%02.f", math.floor(osf3status.theTIME - hours * 3600 - mins * 60))

                system.playFile("sounds/alerts/timer.wav")
                if mins ~= "00" then system.playNumber(mins, UNIT_MINUTE, 2) end
                system.playNumber(secs, UNIT_SECOND, 2)

                if osf3status.timeralarmVibrateParam == true then system.playHaptic("- - -") end

                osf3status.timerAlarmPlay = false
            end
        end

    end
end

function osf3status.playTIMER(widget)
    if osf3status.announcementTimerSwitchParam ~= nil then

        if osf3status.announcementTimerSwitchParam:state() then
            osf3status.timetime.timerannouncementTimer = true
            timerDoneFirst = false
        else
            osf3status.timetime.timerannouncementTimer = false
            timerDoneFirst = true
        end

        if osf3status.isInConfiguration == false then

            if osf3status.theTIME == nil then
                alertTIME = 0
            else
                alertTIME = osf3status.theTIME
            end

            if alertTIME ~= nil then

                hours = string.format("%02.f", math.floor(alertTIME / 3600))
                mins = string.format("%02.f", math.floor(alertTIME / 60 - (hours * 60)))
                secs = string.format("%02.f", math.floor(alertTIME - hours * 3600 - mins * 60))

                if osf3status.timetime.timerannouncementTimer == true then
                    -- start timer
                    if osf3status.timetime.timerannouncementTimerStart == nil and timerDoneFirst == false then
                        osf3status.timetime.timerannouncementTimerStart = os.time()
                        osf3status.timetime.timeraudioannouncementCounter = os.clock()
                        -- print ("Playing TIMER (first)" .. alertTIME)

                        if mins ~= "00" then system.playNumber(mins, UNIT_MINUTE, 2) end
                        system.playNumber(secs, UNIT_SECOND, 2)

                        timerDoneFirst = true
                    end
                else
                    osf3status.timetime.timerannouncementTimerStart = nil
                end

                if osf3status.timetime.timerannouncementTimerStart ~= nil then
                    if timerDoneFirst == false then
                        if ((tonumber(os.clock()) - tonumber(osf3status.timetime.timeraudioannouncementCounter)) >= osf3status.announcementIntervalParam) then
                            osf3status.timetime.timeraudioannouncementCounter = os.clock()
                            -- print ("Playing TIMER (repeat)" .. alertTIME)
                            if mins ~= "00" then system.playNumber(mins, UNIT_MINUTE, 2) end
                            system.playNumber(secs, UNIT_SECOND, 2)
                        end
                    end
                else
                    -- stop timer
                    osf3status.timetime.timerannouncementTimerStart = nil
                end
            end
        end
    end
end

function osf3status.playFuel(widget)
    if osf3status.announcementFuelSwitchParam ~= nil then
        if osf3status.announcementFuelSwitchParam:state() then
            osf3status.fueltime.fuelannouncementTimer = true
            fuelDoneFirst = false
        else
            osf3status.fueltime.fuelannouncementTimer = false
            fuelDoneFirst = true
        end

        if osf3status.isInConfiguration == false then
            if osf3status.sensors.fuel ~= nil then
                if osf3status.fueltime.fuelannouncementTimer == true then
                    -- start timer
                    if osf3status.fueltime.fuelannouncementTimerStart == nil and fuelDoneFirst == false then
                        osf3status.fueltime.fuelannouncementTimerStart = os.time()
                        osf3status.fueltime.fuelaudioannouncementCounter = os.clock()
                        -- print("Play fuel alert (first)")
                        system.playFile("sounds/alerts/fuel.wav")
                        system.playNumber(osf3status.sensors.fuel, UNIT_PERCENT, 2)
                        fuelDoneFirst = true
                    end
                else
                    osf3status.fueltime.fuelannouncementTimerStart = nil
                end

                if osf3status.fueltime.fuelannouncementTimerStart ~= nil then
                    if fuelDoneFirst == false then
                        if ((tonumber(os.clock()) - tonumber(osf3status.fueltime.fuelaudioannouncementCounter)) >= osf3status.announcementIntervalParam) then
                            osf3status.fueltime.fuelaudioannouncementCounter = os.clock()
                            -- print("Play fuel alert (repeat)")
                            system.playFile("sounds/alerts/fuel.wav")
                            system.playNumber(osf3status.sensors.fuel, UNIT_PERCENT, 2)

                        end
                    end
                else
                    -- stop timer
                    osf3status.fueltime.fuelannouncementTimerStart = nil
                end
            end
        end
    end
end

function osf3status.playRPM(widget)
    if osf3status.announcementRPMSwitchParam ~= nil then
        if osf3status.announcementRPMSwitchParam:state() then
            osf3status.rpmtime.announcementTimer = true
            rpmDoneFirst = false
        else
            osf3status.rpmtime.announcementTimer = false
            rpmDoneFirst = true
        end

        if osf3status.isInConfiguration == false then
            if osf3status.sensors.rpm ~= nil then
                if osf3status.rpmtime.announcementTimer == true then
                    -- start timer
                    if osf3status.rpmtime.announcementTimerStart == nil and rpmDoneFirst == false then
                        osf3status.rpmtime.announcementTimerStart = os.time()
                        osf3status.rpmtime.audioannouncementCounter = os.clock()
                        -- print("Play rpm alert (first)")
                        system.playNumber(osf3status.sensors.rpm, UNIT_RPM, 2)
                        rpmDoneFirst = true
                    end
                else
                    osf3status.rpmtime.announcementTimerStart = nil
                end

                if osf3status.rpmtime.announcementTimerStart ~= nil then
                    if rpmDoneFirst == false then
                        if ((tonumber(os.clock()) - tonumber(osf3status.rpmtime.audioannouncementCounter)) >= osf3status.announcementIntervalParam) then
                            -- print("Play rpm alert (repeat)")
                            osf3status.rpmtime.audioannouncementCounter = os.clock()
                            system.playNumber(osf3status.sensors.rpm, UNIT_RPM, 2)
                        end
                    end
                else
                    -- stop timer
                    osf3status.rpmtime.announcementTimerStart = nil
                end
            end
        end
    end
end

function osf3status.playVoltage(widget)
    if osf3status.announcementVoltageSwitchParam ~= nil then
        if osf3status.announcementVoltageSwitchParam:state() then
            osf3status.lvannouncementTimer = true
            voltageDoneFirst = false
        else
            osf3status.lvannouncementTimer = false
            voltageDoneFirst = true
        end

        if osf3status.isInConfiguration == false then
            if osf3status.sensors.voltage ~= nil then
                if osf3status.lvannouncementTimer == true then
                    -- start timer
                    if osf3status.lvannouncementTimerStart == nil and voltageDoneFirst == false then
                        osf3status.lvannouncementTimerStart = os.time()
                        osf3status.lvaudioannouncementCounter = os.clock()
                        -- print("Play voltage alert (first)")
                        -- system.playFile("sounds/alerts/voltage.wav")						
                        system.playNumber(osf3status.sensors.voltage / 100, 2, 2)
                        voltageDoneFirst = true
                    end
                else
                    osf3status.lvannouncementTimerStart = nil
                end

                if osf3status.lvannouncementTimerStart ~= nil then
                    if voltageDoneFirst == false then
                        if osf3status.lvaudioannouncementCounter ~= nil and osf3status.announcementIntervalParam ~= nil then
                            if ((tonumber(os.clock()) - tonumber(osf3status.lvaudioannouncementCounter)) >= osf3status.announcementIntervalParam) then
                                osf3status.lvaudioannouncementCounter = os.clock()
                                -- print("Play voltage alert (repeat)")
                                -- system.playFile("sounds/alerts/voltage.wav")								
                                system.playNumber(osf3status.sensors.voltage / 100, 2, 2)
                            end
                        end
                    end
                else
                    -- stop timer
                    osf3status.lvannouncementTimerStart = nil
                end
            end
        end
    end
end

function osf3status.event(widget, category, value, x, y)

    -- print("Event received:", category, value, x, y)

    if closingLOGS then
        if category == EVT_TOUCH and (value == 16640 or value == 16641) then
            closingLOGS = false
            return true
        end

    end

    if osf3status.showLOGS then
        if value == 35 then osf3status.showLOGS = false end

        if category == EVT_TOUCH and (value == 16640 or value == 16641) then
            if (x >= (osf3status.closeButtonX) and (x <= (osf3status.closeButtonX + osf3status.closeButtonW))) and
                (y >= (osf3status.closeButtonY) and (y <= (osf3status.closeButtonY + osf3status.closeButtonH))) then
                osf3status.showLOGS = false
                closingLOGS = true
            end
            return true
        else
            if category == EVT_TOUCH then return true end
        end

    end

end

function osf3status.playGovernor()
    if osf3status.governorAlertsParam == true then
        if osf3status.playGovernorLastState == nil then osf3status.playGovernorLastState = osf3status.sensors.govmode end

        if osf3status.sensors.govmode ~= osf3status.playGovernorLastState then
            osf3status.playGovernorCount = 0
            osf3status.playGovernorLastState = osf3status.sensors.govmode
        end

        if osf3status.playGovernorCount == 0 then
            -- print("Governor: " .. osf3status.sensors.govmode)
            osf3status.playGovernorCount = 1

            if osf3status.sensors.govmode == "UNKNOWN" and osf3status.governorUNKNOWNParam == true then
                if osf3status.govmodeParam == 0 then system.playFile("sounds/events/governor.wav") end
                system.playFile("sounds/events/unknown.wav")
            end
            if osf3status.sensors.govmode == "DISARMED" and osf3status.governorDISARMEDParam == true then
                if osf3status.govmodeParam == 0 then system.playFile("sounds/events/governor.wav") end
                system.playFile("sounds/events/disarmed.wav")
            end
            if osf3status.sensors.govmode == "DISABLED" and osf3status.governorDISABLEDParam == true then
                if osf3status.govmodeParam == 0 then system.playFile("sounds/events/governor.wav") end
                system.playFile("sounds/events/disabled.wav")
            end
            if osf3status.sensors.govmode == "BAILOUT" and osf3status.governorBAILOUTParam == true then
                if osf3status.govmodeParam == 0 then system.playFile("sounds/events/governor.wav") end
                system.playFile("sounds/events/bailout.wav")
            end
            if osf3status.sensors.govmode == "AUTOROT" and osf3status.governorAUTOROTParam == true then
                if osf3status.govmodeParam == 0 then system.playFile("sounds/events/governor.wav") end
                system.playFile("sounds/events/autorot.wav")
            end
            if osf3status.sensors.govmode == "LOST-HS" and osf3status.governorLOSTHSParam == true then
                if osf3status.govmodeParam == 0 then system.playFile("sounds/events/governor.wav") end
                system.playFile("sounds/events/lost-hs.wav")
            end
            if osf3status.sensors.govmode == "THR-OFF" and osf3status.governorTHROFFParam == true then
                if osf3status.govmodeParam == 0 then system.playFile("sounds/events/governor.wav") end
                system.playFile("sounds/events/thr-off.wav")
            end
            if osf3status.sensors.govmode == "ACTIVE" and osf3status.governorACTIVEParam == true then
                if osf3status.govmodeParam == 0 then system.playFile("sounds/events/governor.wav") end
                system.playFile("sounds/events/active.wav")
            end
            if osf3status.sensors.govmode == "RECOVERY" and osf3status.governorRECOVERYParam == true then
                if osf3status.govmodeParam == 0 then system.playFile("sounds/events/governor.wav") end
                system.playFile("sounds/events/recovery.wav")
            end
            if osf3status.sensors.govmode == "SPOOLUP" and osf3status.governorSPOOLUPParam == true then
                if osf3status.govmodeParam == 0 then system.playFile("sounds/events/governor.wav") end
                system.playFile("sounds/events/spoolup.wav")
            end
            if osf3status.sensors.govmode == "IDLE" and osf3status.governorIDLEParam == true then
                if osf3status.govmodeParam == 0 then system.playFile("sounds/events/governor.wav") end
                system.playFile("sounds/events/idle.wav")
            end
            if osf3status.sensors.govmode == "OFF" and osf3status.governorOFFParam == true then
                if osf3status.govmodeParam == 0 then system.playFile("sounds/events/governor.wav") end
                system.playFile("sounds/events/off.wav")
            end

        end

    end
end

function osf3status.playRPMDiff()
    if osf3status.rpmAlertsParam == true then

        if osf3status.sensors.govmode == "ACTIVE" or osf3status.sensors.govmode == "LOST-HS" or osf3status.sensors.govmode == "BAILOUT" or osf3status.sensors.govmode == "RECOVERY" then

            if osf3status.playrpmdiff.playRPMDiffLastState == nil then osf3status.playrpmdiff.playRPMDiffLastState = osf3status.sensors.rpm end

            -- we take a reading every 5 second
            if (tonumber(os.clock()) - tonumber(osf3status.playrpmdiff.playRPMDiffCounter)) >= 5 then
                osf3status.playrpmdiff.playRPMDiffCounter = os.clock()
                osf3status.playrpmdiff.playRPMDiffLastState = osf3status.sensors.rpm
            end

            -- check if current state withing % of last state
            local percentageDiff = 0
            if osf3status.sensors.rpm > osf3status.playrpmdiff.playRPMDiffLastState then
                percentageDiff = math.abs(100 - (osf3status.sensors.rpm / osf3status.playrpmdiff.playRPMDiffLastState * 100))
            elseif osf3status.playrpmdiff.playRPMDiffLastState < osf3status.sensors.rpm then
                percentage = math.abs(100 - (osf3status.playrpmdiff.playRPMDiffLastState / osf3status.sensors.rpm * 100))
            else
                percentageDiff = 0
            end

            if percentageDiff > osf3status.rpmAlertsPercentageParam / 10 then osf3status.playrpmdiff.playRPMDiffCount = 0 end

            if osf3status.playrpmdiff.playRPMDiffCount == 0 then
                -- print("RPM Difference: " .. percentageDiff)
                osf3status.playrpmdiff.playRPMDiffCount = 1
                system.playNumber(osf3status.sensors.rpm, UNIT_RPM, 2)
            end
        end
    end
end


-- MAIN WAKEUP FUNCTION. THIS SIMPLY FARMS OUT AT DIFFERING SCHEDULES TO SUB FUNCTIONS
function osf3status.wakeup(widget)

    local schedulerUI
    if lcd.isVisible() then
        schedulerUI = 0.25
    else
        schedulerUI = 1
    end

    -- keep cpu load down by running UI at reduced interval
    local now = os.clock()
    if (now - osf3status.wakeupSchedulerUI) >= schedulerUI then
        osf3status.wakeupSchedulerUI = now
        osf3status.wakeupUI()
    end

end

function osf3status.wakeupUI(widget)
    osf3status.refresh = false

    osf3status.linkUP = osf3status.getRSSI()
    osf3status.sensors = osf3status.getSensors()

    if osf3status.refresh == true then
        osf3status.sensorsMAXMIN(osf3status.sensors)
        lcd.invalidate()
    end

    if osf3status.linkUP == 0 then osf3status.linkUPTime = os.clock() end

    if osf3status.linkUP ~= 0 then

        if ((tonumber(os.clock()) - tonumber(osf3status.linkUPTime)) >= 5) then
            -- voltage alerts
            osf3status.playVoltage(widget)
            -- governor callouts
            osf3status.playGovernor(widget)
            -- rpm diff
            osf3status.playRPMDiff(widget)
            -- rpm
            osf3status.playRPM(widget)
            -- current
            osf3status.playCurrent(widget)
            -- fuel
            osf3status.playFuel(widget)
            -- lq
            osf3status.playLQ(widget)
            -- esc
            osf3status.playESC(widget)
            -- mcu
            osf3status.playMCU(widget)
            -- timer
            osf3status.playTIMER(widget)
            -- timer alarm
            osf3status.playTIMERALARM(widget)


            if ((tonumber(os.clock()) - tonumber(osf3status.linkUPTime)) >= 10) then

                -- IDLE
                if osf3status.switchIdlelowParam ~= nil and osf3status.switchIdlelowParam:state() == true then
                    if osf3status.switchstatus.idlelow == nil or osf3status.switchstatus.idlelow == false then
                        system.playFile("sounds/switches/idle-l.wav")
                        osf3status.switchstatus.idlelow = true
                        osf3status.switchstatus.idlemedium = false
                        osf3status.switchstatus.idlehigh = false
                    end
                else
                    osf3status.switchstatus.idlelow = false
                end
                if osf3status.switchIdlemediumParam ~= nil and osf3status.switchIdlemediumParam:state() == true then
                    if osf3status.switchstatus.idlemedium == nil or osf3status.switchstatus.idlemedium == false then
                        system.playFile("sounds/switches/idle-m.wav")
                        osf3status.switchstatus.idlelow = false
                        osf3status.switchstatus.idlemedium = true
                        osf3status.switchstatus.idlehigh = false
                    end
                else
                    osf3status.switchstatus.idlemedium = false
                end
                if osf3status.switchIdlehighParam ~= nil and osf3status.switchIdlehighParam:state() == true then
                    if osf3status.switchstatus.idlehigh == nil or osf3status.switchstatus.idlehigh == false then
                        system.playFile("sounds/switches/idle-h.wav")
                        osf3status.switchstatus.idlelow = false
                        osf3status.switchstatus.idlemedium = false
                        osf3status.switchstatus.idlehigh = true
                    end
                else
                    osf3status.switchstatus.idlehigh = false
                end

                -- RATES
                if osf3status.switchrateslowParam ~= nil and osf3status.switchrateslowParam:state() == true then
                    if osf3status.switchstatus.rateslow == nil or osf3status.switchstatus.rateslow == false then
                        system.playFile("sounds/switches/rates-l.wav")
                        osf3status.switchstatus.rateslow = true
                        osf3status.switchstatus.ratesmedium = false
                        osf3status.switchstatus.rateshigh = false
                    end
                else
                    osf3status.switchstatus.rateslow = false
                end
                if osf3status.switchratesmediumParam ~= nil and osf3status.switchratesmediumParam:state() == true then
                    if osf3status.switchstatus.ratesmedium == nil or osf3status.switchstatus.ratesmedium == false then
                        system.playFile("sounds/switches/rates-m.wav")
                        osf3status.switchstatus.rateslow = false
                        osf3status.switchstatus.ratesmedium = true
                        osf3status.switchstatus.rateshigh = false
                    end
                else
                    osf3status.switchstatus.ratesmedium = false
                end
                if osf3status.switchrateshighParam ~= nil and osf3status.switchrateshighParam:state() == true then
                    if osf3status.switchstatus.rateshigh == nil or osf3status.switchstatus.rateshigh == false then
                        system.playFile("sounds/switches/rates-h.wav")
                        osf3status.switchstatus.rateslow = false
                        osf3status.switchstatus.ratesmedium = false
                        osf3status.switchstatus.rateshigh = true
                    end
                else
                    osf3status.switchstatus.rateshigh = false
                end

                -- RESCUE
                if osf3status.switchrescueonParam ~= nil and osf3status.switchrescueonParam:state() == true then
                    if osf3status.switchstatus.rescueon == nil or osf3status.switchstatus.rescueon == false then
                        system.playFile("sounds/switches/rescue-on.wav")
                        osf3status.switchstatus.rescueon = true
                        osf3status.switchstatus.rescueoff = false
                    end
                else
                    osf3status.switchstatus.rescueon = false
                end
                if osf3status.switchrescueoffParam ~= nil and osf3status.switchrescueoffParam:state() == true then
                    if osf3status.switchstatus.rescueoff == nil or osf3status.switchstatus.rescueoff == false then
                        system.playFile("sounds/switches/rescue-off.wav")
                        osf3status.switchstatus.rescueon = false
                        osf3status.switchstatus.rescueoff = true
                    end
                else
                    osf3status.switchstatus.rescueoff = false
                end

                -- BBL
                if osf3status.switchbblonParam ~= nil and osf3status.switchbblonParam:state() == true then
                    if osf3status.switchstatus.bblon == nil or osf3status.switchstatus.bblon == false then
                        system.playFile("sounds/switches/bbl-on.wav")
                        osf3status.switchstatus.bblon = true
                        osf3status.switchstatus.bbloff = false
                    end
                else
                    osf3status.switchstatus.bblon = false
                end
                if osf3status.switchbbloffParam ~= nil and osf3status.switchbbloffParam:state() == true then
                    if osf3status.switchstatus.bbloff == nil or osf3status.switchstatus.bbloff == false then
                        system.playFile("sounds/switches/bbl-off.wav")
                        osf3status.switchstatus.bblon = false
                        osf3status.switchstatus.bbloff = true
                    end
                else
                    osf3status.switchstatus.bbloff = false
                end

            end
			
			
			---
			-- TIME
			if osf3status.linkUP ~= 0 then
				if armswitchParam ~= nil then
					if armswitchParam:state() == false then
						osf3status.stopTimer = true
						stopTIME = os.clock()
						timerNearlyActive = 1
						osf3status.theTIME = 0
					end
				end

				if osf3status.idleupswitchParam ~= nil then
					if osf3status.idleupswitchParam:state() then
						if timerNearlyActive == 1 then
							timerNearlyActive = 0
							startTIME = os.clock()
						end
						if startTIME ~= nil then osf3status.theTIME = os.clock() - startTIME end
					end
				end

			end

			-- LOW FUEL ALERTS
			-- big conditional to announcement osf3status.lfTimer if needed
			if osf3status.linkUP ~= 0 then
				if osf3status.idleupswitchParam ~= nil then
					if osf3status.idleupswitchParam:state() then
						if (osf3status.sensors.fuel <= osf3status.lowfuelParam and osf3status.alertonParam == 1) then
							osf3status.lfTimer = true
						elseif (osf3status.sensors.fuel <= osf3status.lowfuelParam and osf3status.alertonParam == 2) then
							osf3status.lfTimer = true
						else
							osf3status.lfTimer = false
						end
					else
						osf3status.lfTimer = false
					end
				else
					osf3status.lfTimer = false
				end
			else
				osf3status.lfTimer = false
			end

			if osf3status.lfTimer == true then
				-- start timer
				if osf3status.lfTimerStart == nil then osf3status.lfTimerStart = os.time() end
			else
				osf3status.lfTimerStart = nil
			end

			if osf3status.lfTimerStart ~= nil then
				-- only announcement if we have been on for 5 seconds or more
				if (tonumber(os.clock()) - tonumber(osf3status.lfAudioAlertCounter)) >= osf3status.alertintParam then
					osf3status.lfAudioAlertCounter = os.clock()

					system.playFile("sounds/alerts/lowfuel.wav")

					-- system.playNumber(osf3status.sensors.voltage / 100, 2, 2)
					if osf3status.alrthptParam == true then system.playHaptic("- . -") end

				end
			else
				-- stop timer
				osf3status.lfTimerStart = nil
			end

			-- LOW VOLTAGE ALERTS
			-- big conditional to announcement osf3status.lvTimer if needed
			if osf3status.linkUP ~= 0 then

				if osf3status.idleupswitchParam ~= nil then
					if osf3status.idleupswitchParam:state() then
						if (osf3status.voltageIsLow and osf3status.alertonParam == 0) then
							osf3status.lvTimer = true
						elseif (osf3status.voltageIsLow and osf3status.alertonParam == 2) then
							osf3status.lvTimer = true
						else
							osf3status.lvTimer = false
						end
					else
						osf3status.lvTimer = false
					end
				else
					osf3status.lvTimer = false
				end
			else
				osf3status.lvTimer = false
			end

			if osf3status.lvTimer == true then
				-- start timer
				if osf3status.lvTimerStart == nil then osf3status.lvTimerStart = os.time() end
			else
				osf3status.lvTimerStart = nil
			end

			if osf3status.lvTimerStart ~= nil then
				if (os.time() - osf3status.lvTimerStart >= osf3status.sagParam) then
					-- only announcement if we have been on for 5 seconds or more
					if (tonumber(os.clock()) - tonumber(osf3status.lvAudioAlertCounter)) >= osf3status.alertintParam then
						osf3status.lvAudioAlertCounter = os.clock()

						if osf3status.lvStickannouncement == false then -- do not play if sticks at high end points
							system.playFile("sounds/alerts/lowvoltage.wav")
							-- system.playNumber(osf3status.sensors.voltage / 100, 2, 2)
							if osf3status.alrthptParam == true then system.playHaptic("- . -") end
						else
							-- print("Alarm supressed due to stick positions")
						end

					end
				end
			else
				-- stop timer
				osf3status.lvTimerStart = nil
			end			
			---

        else
            osf3status.adjJUSTUP = true
        end
    end

    return
end

function osf3status.viewLogs()
    osf3status.showLOGS = true
end

function osf3status.menu(widget)

    return {
        {
            "View logs", function()
                osf3status.viewLogs()
            end
        }
    }

end

return osf3status
