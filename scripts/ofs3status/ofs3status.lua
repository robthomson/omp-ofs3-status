ofs3status = {}

local arg = {...}

local environment = system.getVersion()

ofs3status.oldsensors = {"ofs3status.refresh", "voltage", "rpm", "current", "temp_esc", "temp_mcu", "fuel", "mah", "rssi", "fm", "govmode"}
ofs3status.isVisible = nil
ofs3status.isDARKMODE = nil
ofs3status.loopCounter = 0
ofs3status.sensors = nil
ofs3status.gfx_model = nil
ofs3status.theTIME = 0
ofs3status.sensors = {}
ofs3status.sensordisplay = {}
ofs3status.theme = {}
ofs3status.lvTimer = false
ofs3status.lvTimerStart = nil
ofs3status.lvannouncementTimer = false
ofs3status.lvannouncementTimerStart = nil
ofs3status.lvaudioannouncementCounter = 0
ofs3status.lvAudioAlertCounter = 0
ofs3status.motorWasActive = false
ofs3status.lfTimer = false
ofs3status.lfTimerStart = nil
ofs3status.lfannouncementTimer = false
ofs3status.lfannouncementTimerStart = nil
ofs3status.lfaudioannouncementCounter = 0
ofs3status.lfAudioAlertCounter = 0
ofs3status.timeralarmVibrateParam = true
ofs3status.timeralarmParam = 210
ofs3status.timerAlarmPlay = true
ofs3status.statusColorParam = true
ofs3status.rpmtime = {}
ofs3status.rpmtime.rpmTimer = false
ofs3status.rpmtime.rpmTimerStart = nil
ofs3status.rpmtime.announcementTimer = false
ofs3status.rpmtime.announcementTimerStart = nil
ofs3status.rpmtime.audioannouncementCounter = 0
ofs3status.currenttime = {}
ofs3status.currenttime.currentTimer = false
ofs3status.currenttime.currentTimerStart = nil
ofs3status.currenttime.currentannouncementTimer = false
ofs3status.currenttime.currentannouncementTimerStart = nil
ofs3status.currenttime.currentaudioannouncementCounter = 0
ofs3status.lqtime = {}
ofs3status.lqtime.lqTimer = false
ofs3status.lqtime.lqTimerStart = nil
ofs3status.lqtime.lqannouncementTimer = false
ofs3status.lqtime.lqannouncementTimerStart = nil
ofs3status.lqtime.lqaudioannouncementCounter = 0
ofs3status.fueltime = {}
ofs3status.fueltime.fuelTimer = false
ofs3status.fueltime.fuelTimerStart = nil
ofs3status.fueltime.fuelannouncementTimer = false
ofs3status.fueltime.fuelannouncementTimerStart = nil
ofs3status.fueltime.fuelaudioannouncementCounter = 0
ofs3status.esctime = {}
ofs3status.esctime.escTimer = false
ofs3status.esctime.escTimerStart = nil
ofs3status.esctime.escannouncementTimer = false
ofs3status.esctime.escannouncementTimerStart = nil
ofs3status.esctime.escaudioannouncementCounter = 0
ofs3status.mcutime = {}
ofs3status.mcutime.mcuTimer = false
ofs3status.mcutime.mcuTimerStart = nil
ofs3status.mcutime.mcuannouncementTimer = false
ofs3status.mcutime.mcuannouncementTimerStart = nil
ofs3status.mcutime.mcuaudioannouncementCounter = 0
ofs3status.timetime = {}
ofs3status.timetime.timerTimer = false
ofs3status.timetime.timerTimerStart = nil
ofs3status.timetime.timerannouncementTimer = false
ofs3status.timetime.timerannouncementTimerStart = nil
ofs3status.timetime.timeraudioannouncementCounter = 0
ofs3status.linkUP = 0
ofs3status.linkUPTime = 0
ofs3status.refresh = true
ofs3status.isInConfiguration = false
ofs3status.stopTimer = true
ofs3status.startTimer = false
ofs3status.voltageIsLow = false
ofs3status.voltageIsGettingLow = false
ofs3status.fuelIsLow = false
ofs3status.fuelIsGettingLow = false
ofs3status.showLOGS = false
ofs3status.readLOGS = false
ofs3status.readLOGSlast = {}
ofs3status.playGovernorCount = 0
ofs3status.playGovernorLastState = nil
ofs3status.playrpmdiff = {}
ofs3status.playrpmdiff.playRPMDiffCount = 1
ofs3status.playrpmdiff.playRPMDiffLastState = nil
ofs3status.playrpmdiff.playRPMDiffCounter = 0
ofs3status.lvStickOrder = {}
ofs3status.lvStickOrder[1] = {1, 2, 3, 4}
ofs3status.lvStickOrder[2] = {1, 2, 4, 5}
ofs3status.lvStickOrder[3] = {1, 2, 4, 6}
ofs3status.lvStickOrder[4] = {2, 3, 4, 6}
ofs3status.switchstatus = {}
ofs3status.quadBoxParam = 0
ofs3status.lowvoltagStickParam = 0
ofs3status.lowvoltagStickCutoffParam = 70
ofs3status.govmodeParam = 1
ofs3status.btypeParam = 0
ofs3status.lowvoltagStickParam = nil
ofs3status.lowvoltagStickCutoffParam = nil
ofs3status.lowvoltagStickCutoffParam = 80
ofs3status.lowfuelParam = 20
ofs3status.alertintParam = 5
ofs3status.alrthptcParam = 1
ofs3status.maxminParam = true
ofs3status.titleParam = true
ofs3status.modelImageParam = true
ofs3status.cellsParam = 3
ofs3status.lowVoltageGovernorParam = true
ofs3status.sagParam = 5
ofs3status.rpmAlertsParam = false
ofs3status.rpmAlertsPercentageParam = 100
ofs3status.governorAlertsParam = true
ofs3status.announcementVoltageSwitchParam = nil
ofs3status.announcementRPMSwitchParam = nil
ofs3status.announcementCurrentSwitchParam = nil
ofs3status.announcementFuelSwitchParam = nil
ofs3status.announcementLQSwitchParam = nil
ofs3status.announcementESCSwitchParam = nil
ofs3status.announcementMCUSwitchParam = nil
ofs3status.announcementTimerSwitchParam = nil
ofs3status.filteringParam = 1
ofs3status.lowvoltagsenseParam = 2
ofs3status.announcementIntervalParam = 30
ofs3status.lowVoltageGovernorParam = nil
ofs3status.governorUNKNOWNParam = true
ofs3status.governorDISARMEDParam = true
ofs3status.governorDISABLEDParam = true
ofs3status.governorAUTOROTParam = true
ofs3status.governorLOSTHSParam = true
ofs3status.governorTHROFFParam = true
ofs3status.governorACTIVEParam = true
ofs3status.governorRECOVERYParam = true
ofs3status.governorSPOOLUPParam = true
ofs3status.governorIDLEParam = true
ofs3status.governorOFFParam = true
ofs3status.alertonParam = 0
ofs3status.calcfuelParam = false
ofs3status.tempconvertParamESC = 1
ofs3status.tempconvertParamMCU = 1
ofs3status.idleupdelayParam = 20
ofs3status.switchIdlelowParam = nil
ofs3status.switchIdlemediumParam = nil
ofs3status.switchIdlehighParam = nil
ofs3status.switchrateslowParam = nil
ofs3status.switchratesmediumParam = nil
ofs3status.switchrateshighParam = nil
ofs3status.switchrescueonParam = nil
ofs3status.switchrescueoffParam = nil
ofs3status.switchbblonParam = nil
ofs3status.switchbbloffParam = nil
ofs3status.idleupswitchParam = nil
ofs3status.timerWASActive = false
ofs3status.govWasActive = false
ofs3status.maxMinSaved = false
ofs3status.simPreSPOOLUP = false
ofs3status.simDoSPOOLUP = false
ofs3status.simDODISARM = false
ofs3status.simDoSPOOLUPCount = 0
ofs3status.actTime = nil
ofs3status.lvStickannouncement = false
ofs3status.maxminFinals1 = nil
ofs3status.maxminFinals2 = nil
ofs3status.maxminFinals3 = nil
ofs3status.maxminFinals4 = nil
ofs3status.maxminFinals5 = nil
ofs3status.maxminFinals6 = nil
ofs3status.maxminFinals7 = nil
ofs3status.maxminFinals8 = nil
ofs3status.oldADJSOURCE = 0
ofs3status.oldADJVALUE = 0
ofs3status.adjfuncIdChanged = false
ofs3status.adjfuncValueChanged = false
ofs3status.adjJUSTUP = false
ofs3status.ADJSOURCE = nil
ofs3status.ADJVALUE = nil
ofs3status.noTelemTimer = 0
ofs3status.closeButtonX = 0
ofs3status.closeButtonY = 0
ofs3status.closeButtonW = 0
ofs3status.closeButtonH = 0
ofs3status.adjTimerStart = os.time()
ofs3status.adjJUSTUPCounter = 0
ofs3status.sensorVoltageMax = 0
ofs3status.sensorVoltageMin = 0
ofs3status.sensorFuelMin = 0
ofs3status.sensorFuelMax = 0
ofs3status.sensorRPMMin = 0
ofs3status.sensorRPMMax = 0
ofs3status.sensorCurrentMin = 0
ofs3status.sensorCurrentMax = 0
ofs3status.sensorTempMCUMin = 0
ofs3status.sensorTempMCUMax = 0
ofs3status.sensorTempESCMin = 0
ofs3status.sensorTempESCMax = 0
ofs3status.sensorRSSIMin = 0
ofs3status.sensorRSSIMax = 0
ofs3status.lastMaxMin = 0
ofs3status.wakeupSchedulerUI = os.clock()
ofs3status.voltageNoiseQ = 100
ofs3status.fuelNoiseQ = 100
ofs3status.rpmNoiseQ = 100
ofs3status.temp_mcuNoiseQ = 100
ofs3status.temp_escNoiseQ = 100
ofs3status.rssiNoiseQ = 100
ofs3status.currentNoiseQ = 100
ofs3status.i8n = assert(loadfile("i8n/" .. system.getLocale() .. ".lua"))()
ofs3status.layoutOptions = {
    {ofs3status.i8n.TIMER, 1}, {ofs3status.i8n.VOLTAGE, 2}, {ofs3status.i8n.FUEL, 3}, {ofs3status.i8n.CURRENT, 4}, {ofs3status.i8n.MAH, 17}, {ofs3status.i8n.RPM, 5}, {ofs3status.i8n.LQ, 6},
    {ofs3status.i8n.TESC, 7}, {ofs3status.i8n.TMCU, 8}, {ofs3status.i8n.IMAGE, 9}, {ofs3status.i8n.GOVERNOR, 10}, {ofs3status.i8n.IMAGEGOVERNOR, 11}, {ofs3status.i8n.LQTIMER, 12},
    {ofs3status.i8n.TESCTMCU, 13}, {ofs3status.i8n.VOLTAGEFUEL, 14}, {ofs3status.i8n.VOLTAGECURRENT, 15}, {ofs3status.i8n.VOLTAGEMAH, 16}, {ofs3status.i8n.LQTIMERTESCTMCU, 20},
    {ofs3status.i8n.MAXCURRENT, 21}, {ofs3status.i8n.LQGOVERNOR, 22}
}
ofs3status.layoutBox1Param = 11 -- IMAGE, GOV
ofs3status.layoutBox2Param = 2 -- VOLTAGE
ofs3status.layoutBox3Param = 3 -- FUEL
ofs3status.layoutBox4Param = 12 -- LQ,TIMER
ofs3status.layoutBox5Param = 4 -- CURRENT
ofs3status.layoutBox6Param = 5 -- RPM
ofs3status.adjfunctions = {
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

function ofs3status.create(widget)
    ofs3status.gfx_model = lcd.loadBitmap(model.bitmap())
    ofs3status.gfx_heli = lcd.loadBitmap("gfx/heli.png")
    ofs3status.gfx_close = lcd.loadBitmap("gfx/close.png")
    ofs3status.rssiSensor = ofs3status.getRssiSensor()

    if tonumber(ofs3status.sensorMakeNumber(environment.version)) < 159 then
        ofs3status.screenError("ETHOS < V1.5.9")
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

function ofs3status.configure(widget)
    ofs3status.isInConfiguration = true

    triggerpanel = form.addExpansionPanel(ofs3status.i8n.Triggers)
    triggerpanel:open(false)

    line = triggerpanel:addLine(ofs3status.i8n.Armswitch)
    armswitch = form.addSwitchField(line, form.getFieldSlots(line)[0], function()
        return armswitchParam
    end, function(value)
        armswitchParam = value
    end)

    line = triggerpanel:addLine(ofs3status.i8n.Idleupswitch)
    idleupswitch = form.addSwitchField(line, form.getFieldSlots(line)[0], function()
        return ofs3status.idleupswitchParam
    end, function(value)
        ofs3status.idleupswitchParam = value
    end)

    line = triggerpanel:addLine("    " .. ofs3status.i8n.Delaybeforeactive)
    field = form.addNumberField(line, nil, 5, 60, function()
        return ofs3status.idleupdelayParam
    end, function(value)
        ofs3status.idleupdelayParam = value
    end)
    field:default(5)
    field:suffix("s")

    timerpanel = form.addExpansionPanel(ofs3status.i8n.Timerconfiguration)
    timerpanel:open(false)

    timeTable = {
        {ofs3status.i8n.Disabled, 0}, {"00:30", 30}, {"01:00", 60}, {"01:30", 90}, {"02:00", 120}, {"02:30", 150}, {"03:00", 180}, {"03:30", 210}, {"04:00", 240}, {"04:30", 270}, {"05:00", 300},
        {"05:30", 330}, {"06:00", 360}, {"06:30", 390}, {"07:00", 420}, {"07:30", 450}, {"08:00", 480}, {"08:30", 510}, {"09:00", 540}, {"09:30", 570}, {"10:00", 600}, {"10:30", 630}, {"11:00", 660},
        {"11:30", 690}, {"12:00", 720}, {"12:30", 750}, {"13:00", 780}, {"13:30", 810}, {"14:00", 840}, {"14:30", 870}, {"15:00", 900}, {"15:30", 930}, {"16:00", 960}, {"16:30", 990}, {"17:00", 1020},
        {"17:30", 1050}, {"18:00", 1080}, {"18:30", 1110}, {"19:00", 1140}, {"19:30", 1170}, {"20:00", 1200}
    }

    line = timerpanel:addLine(ofs3status.i8n.Playalarmat)
    form.addChoiceField(line, nil, timeTable, function()
        return ofs3status.timeralarmParam
    end, function(newValue)
        ofs3status.timeralarmParam = newValue
    end)

    line = timerpanel:addLine(ofs3status.i8n.Vibrate)
    form.addBooleanField(line, nil, function()
        return ofs3status.timeralarmVibrateParam
    end, function(newValue)
        ofs3status.timeralarmVibrateParam = newValue
    end)

    batterypanel = form.addExpansionPanel(ofs3status.i8n.Batteryconfiguration)
    batterypanel:open(false)

    -- CELLS

    line = batterypanel:addLine(ofs3status.i8n.Type)
    form.addChoiceField(line, nil, {{ofs3status.i8n.LiPo, 0}, {ofs3status.i8n.LiHv, 1}, {ofs3status.i8n.Lion, 2}, {ofs3status.i8n.LiFe, 3}, {ofs3status.i8n.NiMh, 4}}, function()
        return ofs3status.btypeParam
    end, function(newValue)
        ofs3status.btypeParam = newValue
    end)

    -- BATTERY CELLS
    line = batterypanel:addLine(ofs3status.i8n.Cells)
    field = form.addNumberField(line, nil, 0, 14, function()
        return ofs3status.cellsParam
    end, function(value)
        ofs3status.cellsParam = value
    end)
    field:default(6)

    -- LOW FUEL announcement
    line = batterypanel:addLine(ofs3status.i8n.Lowfuelpercentage)
    field = form.addNumberField(line, nil, 0, 50, function()
        return ofs3status.lowfuelParam
    end, function(value)
        ofs3status.lowfuelParam = value
    end)
    field:default(20)
    field:suffix("%")

    -- ALERT ON
    line = batterypanel:addLine(ofs3status.i8n.Playalerton)
    form.addChoiceField(line, nil, {{ofs3status.i8n.Lowvoltage, 0}, {ofs3status.i8n.Lowfuel, 1}, {ofs3status.i8n.LowfuelLowvoltage, 2}, {ofs3status.i8n.Disabled, 3}}, function()
        return ofs3status.alertonParam
    end, function(newValue)
        if newValue == 3 then
            plalrtint:enable(false)
            plalrthap:enable(false)
        else
            plalrtint:enable(true)
            plalrthap:enable(true)
        end
        ofs3status.alertonParam = newValue
    end)

    -- ALERT INTERVAL
    line = batterypanel:addLine("     " .. ofs3status.i8n.Interval)
    plalrtint = form.addChoiceField(line, nil, {{"5S", 5}, {"10S", 10}, {"15S", 15}, {"20S", 20}, {"30S", 30}}, function()
        return ofs3status.alertintParam
    end, function(newValue)
        ofs3status.alertintParam = newValue
    end)
    if ofs3status.alertonParam == 3 then
        plalrtint:enable(false)
    else
        plalrtint:enable(true)
    end

    -- HAPTIC
    line = batterypanel:addLine("     " .. ofs3status.i8n.Vibrate)
    plalrthap = form.addBooleanField(line, nil, function()
        return ofs3status.alrthptParam
    end, function(newValue)
        ofs3status.alrthptParam = newValue
    end)
    if ofs3status.alertonParam == 3 then
        plalrthap:enable(false)
    else
        plalrthap:enable(true)
    end

    switchpanel = form.addExpansionPanel(ofs3status.i8n.Switchannouncements)
    switchpanel:open(false)

    line = switchpanel:addLine(ofs3status.i8n.Idlespeedlow)
    form.addSwitchField(line, nil, function()
        return ofs3status.switchIdlelowParam
    end, function(value)
        ofs3status.switchIdlelowParam = value
    end)

    line = switchpanel:addLine(ofs3status.i8n.Idlespeedmedium)
    form.addSwitchField(line, nil, function()
        return ofs3status.switchIdlemediumParam
    end, function(value)
        ofs3status.switchIdlemediumParam = value
    end)

    line = switchpanel:addLine(ofs3status.i8n.Idlespeedhigh)
    form.addSwitchField(line, nil, function()
        return ofs3status.switchIdlehighParam
    end, function(value)
        ofs3status.switchIdlehighParam = value
    end)

    line = switchpanel:addLine(ofs3status.i8n.Rateslow)
    form.addSwitchField(line, nil, function()
        return ofs3status.switchrateslowParam
    end, function(value)
        ofs3status.switchrateslowParam = value
    end)

    line = switchpanel:addLine(ofs3status.i8n.Ratesmedium)
    form.addSwitchField(line, nil, function()
        return ofs3status.switchratesmediumParam
    end, function(value)
        ofs3status.switchratesmediumParam = value
    end)

    line = switchpanel:addLine(ofs3status.i8n.Rateshigh)
    form.addSwitchField(line, nil, function()
        return ofs3status.switchrateshighParam
    end, function(value)
        ofs3status.switchrateshighParam = value
    end)

    line = switchpanel:addLine(ofs3status.i8n.Rescueon)
    form.addSwitchField(line, nil, function()
        return ofs3status.switchrescueonParam
    end, function(value)
        ofs3status.switchrescueonParam = value
    end)

    line = switchpanel:addLine(ofs3status.i8n.Rescueoff)
    form.addSwitchField(line, nil, function()
        return ofs3status.switchrescueoffParam
    end, function(value)
        ofs3status.switchrescueoffParam = value
    end)

    line = switchpanel:addLine(ofs3status.i8n.BBLenabled)
    form.addSwitchField(line, nil, function()
        return ofs3status.switchbblonParam
    end, function(value)
        ofs3status.switchbblonParam = value
    end)

    line = switchpanel:addLine(ofs3status.i8n.BBLdisabled)
    form.addSwitchField(line, nil, function()
        return ofs3status.switchbbloffParam
    end, function(value)
        ofs3status.switchbbloffParam = value
    end)

    announcementpanel = form.addExpansionPanel(ofs3status.i8n.Telemetryannouncements)
    announcementpanel:open(false)

    -- announcement VOLTAGE READING
    line = announcementpanel:addLine(ofs3status.i8n.Voltage)
    form.addSwitchField(line, form.getFieldSlots(line)[0], function()
        return ofs3status.announcementVoltageSwitchParam
    end, function(value)
        ofs3status.announcementVoltageSwitchParam = value
    end)

    -- announcement RPM READING
    line = announcementpanel:addLine(ofs3status.i8n.Rpm)
    form.addSwitchField(line, nil, function()
        return ofs3status.announcementRPMSwitchParam
    end, function(value)
        ofs3status.announcementRPMSwitchParam = value
    end)

    -- announcement CURRENT READING
    line = announcementpanel:addLine(ofs3status.i8n.Current)
    form.addSwitchField(line, nil, function()
        return ofs3status.announcementCurrentSwitchParam
    end, function(value)
        ofs3status.announcementCurrentSwitchParam = value
    end)

    -- announcement FUEL READING
    line = announcementpanel:addLine(ofs3status.i8n.Fuel)
    form.addSwitchField(line, form.getFieldSlots(line)[0], function()
        return ofs3status.announcementFuelSwitchParam
    end, function(value)
        ofs3status.announcementFuelSwitchParam = value
    end)

    -- announcement LQ READING
    line = announcementpanel:addLine(ofs3status.i8n.LQ)
    form.addSwitchField(line, form.getFieldSlots(line)[0], function()
        return ofs3status.announcementLQSwitchParam
    end, function(value)
        ofs3status.announcementLQSwitchParam = value
    end)

    -- announcement LQ READING
    line = announcementpanel:addLine(ofs3status.i8n.Esctemperature)
    form.addSwitchField(line, form.getFieldSlots(line)[0], function()
        return ofs3status.announcementESCSwitchParam
    end, function(value)
        ofs3status.announcementESCSwitchParam = value
    end)

    -- announcement MCU READING
    line = announcementpanel:addLine(ofs3status.i8n.Mcutemperature)
    form.addSwitchField(line, form.getFieldSlots(line)[0], function()
        return ofs3status.announcementMCUSwitchParam
    end, function(value)
        ofs3status.announcementMCUSwitchParam = value
    end)

    -- announcement TIMER READING
    line = announcementpanel:addLine(ofs3status.i8n.Timer)
    form.addSwitchField(line, form.getFieldSlots(line)[0], function()
        return ofs3status.announcementTimerSwitchParam
    end, function(value)
        ofs3status.announcementTimerSwitchParam = value
    end)

    govalertpanel = form.addExpansionPanel(ofs3status.i8n.Governorannouncements)
    govalertpanel:open(false)

    -- TITLE DISPLAY
    line = govalertpanel:addLine("  " .. ofs3status.i8n.OFF)
    form.addBooleanField(line, nil, function()
        return ofs3status.governorOFFParam
    end, function(newValue)
        ofs3status.governorOFFParam = newValue
    end)

    -- TITLE DISPLAY
    line = govalertpanel:addLine("  " .. ofs3status.i8n.IDLE)
    form.addBooleanField(line, nil, function()
        return ofs3status.governorIDLEParam
    end, function(newValue)
        ofs3status.governorIDLEParam = newValue
    end)

    -- TITLE DISPLAY
    line = govalertpanel:addLine("  " .. ofs3status.i8n.SPOOLUP)
    form.addBooleanField(line, nil, function()
        return ofs3status.governorSPOOLUPParam
    end, function(newValue)
        ofs3status.governorSPOOLUPParam = newValue
    end)

    line = govalertpanel:addLine("  " .. ofs3status.i8n.RECOVERY)
    form.addBooleanField(line, nil, function()
        return ofs3status.governorRECOVERYParam
    end, function(newValue)
        ofs3status.governorRECOVERYParam = newValue
    end)

    line = govalertpanel:addLine("  " .. ofs3status.i8n.ACTIVE)
    form.addBooleanField(line, nil, function()
        return ofs3status.governorACTIVEParam
    end, function(newValue)
        ofs3status.governorACTIVEParam = newValue
    end)

    line = govalertpanel:addLine("  " .. ofs3status.i8n.THROFF)
    form.addBooleanField(line, nil, function()
        return ofs3status.governorTHROFFParam
    end, function(newValue)
        ofs3status.governorTHROFFParam = newValue
    end)

    line = govalertpanel:addLine("  " .. ofs3status.i8n.LOSTHS)
    form.addBooleanField(line, nil, function()
        return ofs3status.governorLOSTHSParam
    end, function(newValue)
        ofs3status.governorLOSTHSParam = newValue
    end)

    line = govalertpanel:addLine("  " .. ofs3status.i8n.AUTOROT)
    form.addBooleanField(line, nil, function()
        return ofs3status.governorAUTOROTParam
    end, function(newValue)
        ofs3status.governorAUTOROTParam = newValue
    end)

    line = govalertpanel:addLine("  " .. ofs3status.i8n.BAILOUT)
    form.addBooleanField(line, nil, function()
        return ofs3status.governorBAILOUTParam
    end, function(newValue)
        ofs3status.governorBAILOUTParam = newValue
    end)

    line = govalertpanel:addLine("  " .. ofs3status.i8n.DISABLED)
    form.addBooleanField(line, nil, function()
        return ofs3status.governorDISABLEDParam
    end, function(newValue)
        ofs3status.governorDISABLEDParam = newValue
    end)

    line = govalertpanel:addLine("  " .. ofs3status.i8n.DISARMED)
    form.addBooleanField(line, nil, function()
        return ofs3status.governorDISARMEDParam
    end, function(newValue)
        ofs3status.governorDISARMEDParam = newValue
    end)

    line = govalertpanel:addLine("   " .. ofs3status.i8n.UNKNOWN)
    form.addBooleanField(line, nil, function()
        return ofs3status.governorUNKNOWNParam
    end, function(newValue)
        ofs3status.governorUNKNOWNParam = newValue
    end)

    displaypanel = form.addExpansionPanel(ofs3status.i8n.Customisedisplay)
    displaypanel:open(false)

    line = displaypanel:addLine(ofs3status.i8n.Box1)
    form.addChoiceField(line, nil, ofs3status.layoutOptions, function()
        return ofs3status.layoutBox1Param
    end, function(newValue)
        ofs3status.layoutBox1Param = newValue
    end)

    line = displaypanel:addLine(ofs3status.i8n.Box2)
    form.addChoiceField(line, nil, ofs3status.layoutOptions, function()
        return ofs3status.layoutBox2Param
    end, function(newValue)
        ofs3status.layoutBox2Param = newValue
    end)

    line = displaypanel:addLine(ofs3status.i8n.Box3)
    form.addChoiceField(line, nil, ofs3status.layoutOptions, function()
        return ofs3status.layoutBox3Param
    end, function(newValue)
        ofs3status.layoutBox3Param = newValue
    end)

    line = displaypanel:addLine(ofs3status.i8n.Box4)
    form.addChoiceField(line, nil, ofs3status.layoutOptions, function()
        return ofs3status.layoutBox4Param
    end, function(newValue)
        ofs3status.layoutBox4Param = newValue
    end)

    line = displaypanel:addLine(ofs3status.i8n.Box5)
    form.addChoiceField(line, nil, ofs3status.layoutOptions, function()
        return ofs3status.layoutBox5Param
    end, function(newValue)
        ofs3status.layoutBox5Param = newValue
    end)

    line = displaypanel:addLine(ofs3status.i8n.Box6)
    form.addChoiceField(line, nil, ofs3status.layoutOptions, function()
        return ofs3status.layoutBox6Param
    end, function(newValue)
        ofs3status.layoutBox6Param = newValue
    end)

    -- TITLE DISPLAY
    line = displaypanel:addLine(ofs3status.i8n.Displaytitle)
    form.addBooleanField(line, nil, function()
        return ofs3status.titleParam
    end, function(newValue)
        ofs3status.titleParam = newValue
    end)

    -- MAX MIN DISPLAY
    line = displaypanel:addLine(ofs3status.i8n.Displaymaxmin)
    form.addBooleanField(line, nil, function()
        return ofs3status.maxminParam
    end, function(newValue)
        ofs3status.maxminParam = newValue
    end)

    -- color mode
    line = displaypanel:addLine(ofs3status.i8n.statusColor)
    form.addBooleanField(line, nil, function()
        return ofs3status.statusColorParam
    end, function(newValue)
        ofs3status.statusColorParam = newValue
    end)    


    advpanel = form.addExpansionPanel(ofs3status.i8n.Advanced)
    advpanel:open(false)

  --  line = advpanel:addLine(ofs3status.i8n.Governor)
  --  extgov = form.addChoiceField(line, nil, {{ofs3status.i8n.RFGovernor, 0}, {ofs3status.i8n.ExternalGovernor, 1}}, function()
  --      return ofs3status.govmodeParam
  --  end, function(newValue)
  --      ofs3status.govmodeParam = newValue
  --  end)

    line = form.addLine(ofs3status.i8n.Temperatureconversion, advpanel)

    line = advpanel:addLine("    " .. ofs3status.i8n.ESC)
    form.addChoiceField(line, nil, {{ofs3status.i8n.Disable, 1}, {"°C -> °F", 2}, {"°F -> °C", 3}}, function()
        return ofs3status.tempconvertParamESC
    end, function(newValue)
        ofs3status.tempconvertParamESC = newValue
    end)

    line = advpanel:addLine("   " .. ofs3status.i8n.MCU)
    form.addChoiceField(line, nil, {{ofs3status.i8n.Disable, 1}, {"°C -> °F", 2}, {"°F -> °C", 3}}, function()
        return ofs3status.tempconvertParamMCU
    end, function(newValue)
        ofs3status.tempconvertParamMCU = newValue
    end)

    line = form.addLine(ofs3status.i8n.Voltage, advpanel)

    -- LVannouncement DISPLAY
    line = advpanel:addLine("    " .. ofs3status.i8n.Sensitivity)
    form.addChoiceField(line, nil, {{ofs3status.i8n.HIGH, 1}, {ofs3status.i8n.MEDIUM, 2}, {ofs3status.i8n.LOW, 3}}, function()
        return ofs3status.lowvoltagsenseParam
    end, function(newValue)
        ofs3status.lowvoltagsenseParam = newValue
    end)

    line = advpanel:addLine("    " .. ofs3status.i8n.Sagcompensation)
    field = form.addNumberField(line, nil, 0, 10, function()
        return ofs3status.sagParam
    end, function(value)
        ofs3status.sagParam = value
    end)
    field:default(5)
    field:suffix("s")
    -- field:decimals(1)

    -- LVSTICK MONITORING
    line = advpanel:addLine("    " .. ofs3status.i8n.Gimbalmonitoring)
    form.addChoiceField(line, nil, {
        {ofs3status.i8n.DISABLED, 0}, -- recomended
        {"AECR1T23 (ELRS)", 1}, -- recomended
        {"AETRC123 (FRSKY)", 2}, -- frsky
        {"AETR1C23 (FUTABA)", 3}, -- fut/hitec
        {"TAER1C23 (SPEKTRUM)", 4} -- spec
    }, function()
        return ofs3status.lowvoltagStickParam
    end, function(newValue)
        if newValue == 0 then
            fieldstckcutoff:enable(false)
        else
            fieldstckcutoff:enable(true)
        end
        ofs3status.lowvoltagStickParam = newValue
    end)

    line = advpanel:addLine("       " .. ofs3status.i8n.Stickcutoff)
    fieldstckcutoff = form.addNumberField(line, nil, 65, 95, function()
        return ofs3status.lowvoltagStickCutoffParam
    end, function(value)
        ofs3status.lowvoltagStickCutoffParam = value
    end)
    fieldstckcutoff:default(80)
    fieldstckcutoff:suffix("%")
    if ofs3status.lowvoltagStickParam == 0 then
        fieldstckcutoff:enable(false)
    else
        fieldstckcutoff:enable(true)
    end

    line = form.addLine(ofs3status.i8n.Headspeed, advpanel)

    -- TITLE DISPLAY
    line = advpanel:addLine("   " .. ofs3status.i8n.AlertonRPMdifference)
    form.addBooleanField(line, nil, function()
        return ofs3status.rpmAlertsParam
    end, function(newValue)
        if newValue == false then
            rpmperfield:enable(false)
        else
            rpmperfield:enable(true)
        end

        ofs3status.rpmAlertsParam = newValue
    end)

    -- TITLE DISPLAY
    line = advpanel:addLine("   " .. ofs3status.i8n.Alertifdifferencegtthan)
    rpmperfield = form.addNumberField(line, nil, 0, 200, function()
        return ofs3status.rpmAlertsPercentageParam
    end, function(value)
        ofs3status.rpmAlertsPercentageParam = value
    end)
    if ofs3status.rpmAlertsParam == false then
        rpmperfield:enable(false)
    else
        rpmperfield:enable(true)
    end
    rpmperfield:default(100)
    rpmperfield:decimals(1)
    rpmperfield:suffix("%")

    -- FILTER
    -- MAX MIN DISPLAY
    line = advpanel:addLine(ofs3status.i8n.Telemetryfiltering)
    form.addChoiceField(line, nil, {{ofs3status.i8n.LOW, 1}, {ofs3status.i8n.MEDIUM, 2}, {ofs3status.i8n.HIGH, 3}}, function()
        return ofs3status.filteringParam
    end, function(newValue)
        ofs3status.filteringParam = newValue
    end)

    -- LVannouncement DISPLAY
    line = advpanel:addLine(ofs3status.i8n.Announcementinterval)
    form.addChoiceField(line, nil, {
        {"5s", 5}, {"10s", 10}, {"15s", 15}, {"20s", 20}, {"25s", 25}, {"30s", 30}, {"35s", 35}, {"40s", 40}, {"45s", 45}, {"50s", 50}, {"55s", 55}, {"60s", 60}, {ofs3status.i8n.Norepeat, 50000}
    }, function()
        return ofs3status.announcementIntervalParam
    end, function(newValue)
        ofs3status.announcementIntervalParam = newValue
    end)


    -- calcfuel
    line = advpanel:addLine(ofs3status.i8n.Calcfuellocally)
    form.addBooleanField(line, nil, function()
        return ofs3status.calcfuelParam
    end, function(newValue)
        ofs3status.calcfuelParam = newValue
    end)
    
    ofs3status.resetALL()

    return widget
end

function ofs3status.getRssiSensor()
    if environment.simulation then return 100 end

    local rssiNames = {"RSSI", "RSSI 2.4G", "RSSI 900M", "Rx RSSI1", "Rx RSSI2", "RSSI Int", "RSSI Ext"}
    for i, name in ipairs(rssiNames) do
        ofs3status.rssiSensor = system.getSource(name)
        if ofs3status.rssiSensor then return ofs3status.rssiSensor end
    end
end

function ofs3status.getRSSI()
    if environment.simulation == true then return 100 end
    if ofs3status.rssiSensor ~= nil and ofs3status.rssiSensor:state() then return ofs3status.rssiSensor:value() end
    return 0
end

function ofs3status.screenError(msg)
    local w, h = lcd.getWindowSize()
    ofs3status.isDARKMODE = lcd.darkMode()
    lcd.font(FONT_STD)
    str = msg
    tsizeW, tsizeH = lcd.getTextSize(str)

    if ofs3status.isDARKMODE then
        -- dark theme
        lcd.color(lcd.RGB(255, 255, 255, 1))
    else
        -- light theme
        lcd.color(lcd.RGB(90, 90, 90))
    end
    lcd.drawText((w / 2) - tsizeW / 2, (h / 2) - tsizeH / 2, str)
    return
end

function ofs3status.resetALL()
    ofs3status.showLOGS = false
    ofs3status.sensorVoltageMax = 0
    ofs3status.sensorVoltageMin = 0
    ofs3status.sensorFuelMin = 0
    ofs3status.sensorFuelMax = 0
    ofs3status.sensorRPMMin = 0
    ofs3status.sensorRPMMax = 0
    ofs3status.sensorCurrentMin = 0
    ofs3status.sensorCurrentMax = 0
    ofs3status.sensorTempMCUMin = 0
    ofs3status.sensorTempMCUMax = 0
    ofs3status.sensorTempESCMin = 0
    ofs3status.sensorTempESCMax = 0
end

function ofs3status.noTelem()

    lcd.font(FONT_STD)
    str = ofs3status.i8n.NODATA

    ofs3status.theme = ofs3status.getThemeInfo()
    local w, h = lcd.getWindowSize()
    boxW = math.floor(w / 2)
    boxH = 45
    tsizeW, tsizeH = lcd.getTextSize(str)

    -- draw the backgofs3status.round
    if ofs3status.isDARKMODE then
        lcd.color(lcd.RGB(40, 40, 40))
    else
        lcd.color(lcd.RGB(240, 240, 240))
    end
    lcd.drawFilledRectangle(w / 2 - boxW / 2, h / 2 - boxH / 2, boxW, boxH)

    -- draw the border
    if ofs3status.isDARKMODE then
        -- dark theme
        lcd.color(lcd.RGB(255, 255, 255, 1))
    else
        -- light theme
        lcd.color(lcd.RGB(90, 90, 90))
    end
    lcd.drawRectangle(w / 2 - boxW / 2, h / 2 - boxH / 2, boxW, boxH)

    if ofs3status.isDARKMODE then
        -- dark theme
        lcd.color(lcd.RGB(255, 255, 255, 1))
    else
        -- light theme
        lcd.color(lcd.RGB(90, 90, 90))
    end
    lcd.drawText((w / 2) - tsizeW / 2, (h / 2) - tsizeH / 2, str)
    return
end

function ofs3status.getThemeInfo()
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
            title_voltage = ofs3status.i8n.VOLTAGE,
            title_fuel = ofs3status.i8n.FUEL,
            title_mah = ofs3status.i8n.MAH,
            title_rpm = ofs3status.i8n.RPM,
            title_current = ofs3status.i8n.CURRENT,
            title_tempMCU = ofs3status.i8n.MCU,
            title_tempESC = ofs3status.i8n.ESC,
            title_time = ofs3status.i8n.TIMER,
            title_governor = ofs3status.i8n.GOVERNOR,
            title_fm = ofs3status.i8n.FLIGHTMODE,
            title_rssi = ofs3status.i8n.LQ,
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
            title_voltage = ofs3status.i8n.VOLTAGE,
            title_fuel = ofs3status.i8n.FUEL,
            title_mah = ofs3status.i8n.MAH,
            title_rpm = ofs3status.i8n.RPM,
            title_current = ofs3status.i8n.CURRENT,
            title_tempMCU = ofs3status.i8n.MCU,
            title_tempESC = ofs3status.i8n.ESC,
            title_time = ofs3status.i8n.TIMER,
            title_governor = ofs3status.i8n.GOVERNOR,
            title_fm = ofs3status.i8n.FLIGHTMODE,
            title_rssi = ofs3status.i8n.LQ,
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
            title_voltage = ofs3status.i8n.VOLTAGE,
            title_fuel = ofs3status.i8n.FUEL,
            title_mah = ofs3status.i8n.MAH,
            title_rpm = ofs3status.i8n.RPM,
            title_current = ofs3status.i8n.CURRENT,
            title_tempMCU = ofs3status.i8n.MCU,
            title_tempESC = ofs3status.i8n.ESC,
            title_time = ofs3status.i8n.TIMER,
            title_governor = ofs3status.i8n.GOVERNOR,
            title_fm = ofs3status.i8n.FLIGHTMODE,
            title_rssi = ofs3status.i8n.LQ,
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
            title_voltage = ofs3status.i8n.VOLTAGE,
            title_fuel = ofs3status.i8n.FUEL,
            title_mah = ofs3status.i8n.MAH,
            title_rpm = ofs3status.i8n.RPM,
            title_current = ofs3status.i8n.CURRENT,
            title_tempMCU = ofs3status.i8n.MCU,
            title_tempESC = ofs3status.i8n.ESC,
            title_time = ofs3status.i8n.TIMER,
            title_governor = ofs3status.i8n.GOVERNOR,
            title_fm = ofs3status.i8n.FLIGHTMODE,
            title_rssi = ofs3status.i8n.LQ,
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
            title_voltage = ofs3status.i8n.VOLTAGE,
            title_fuel = ofs3status.i8n.FUEL,
            title_mah = ofs3status.i8n.MAH,
            title_rpm = ofs3status.i8n.RPM,
            title_current = ofs3status.i8n.CURRENT,
            title_tempMCU = ofs3status.i8n.MCU,
            title_tempESC = ofs3status.i8n.ESC,
            title_time = ofs3status.i8n.TIMER,
            title_governor = ofs3status.i8n.GOVERNOR,
            title_fm = ofs3status.i8n.FLIGHTMODE,
            title_rssi = ofs3status.i8n.LQ,
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

function ofs3status.govColorFlag(flag)

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

function ofs3status.telemetryBox(x, y, w, h, title, value, unit, smallbox, alarm, minimum, maximum)

    ofs3status.isVisible = lcd.isVisible()
    ofs3status.isDARKMODE = lcd.darkMode()
    local theme = ofs3status.getThemeInfo()

    if ofs3status.isDARKMODE then
        lcd.color(lcd.RGB(40, 40, 40))
    else
        lcd.color(lcd.RGB(240, 240, 240))
    end

    -- draw box backgofs3status.round	
    lcd.drawFilledRectangle(x, y, w, h)

    -- color	
    if ofs3status.isDARKMODE then
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
            if ofs3status.maxminParam == false and ofs3status.titleParam == false then
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
        if ofs3status.statusColorParam == true then
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
            if ofs3status.isDARKMODE then
                lcd.color(lcd.RGB(255, 255, 255, 1))
            else
                lcd.color(lcd.RGB(90, 90, 90))
            end
        end

    end

    if title ~= nil and ofs3status.titleParam == true then
        lcd.font(theme.fontTITLE)
        str = title
        tsizeW, tsizeH = lcd.getTextSize(str)

        sx = (x + w / 2) - (tsizeW / 2)
        sy = (y + h) - (tsizeH) - theme.colSpacing

        lcd.drawText(sx, sy, str)
    end

    if ofs3status.maxminParam == true then

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

function ofs3status.telemetryBoxMAX(x, y, w, h, title, value, unit, smallbox)

    ofs3status.isVisible = lcd.isVisible()
    ofs3status.isDARKMODE = lcd.darkMode()
    local theme = ofs3status.getThemeInfo()

    if ofs3status.isDARKMODE then
        lcd.color(lcd.RGB(40, 40, 40))
    else
        lcd.color(lcd.RGB(240, 240, 240))
    end

    -- draw box backgofs3status.round	
    lcd.drawFilledRectangle(x, y, w, h)

    -- color	
    if ofs3status.isDARKMODE then
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
            if ofs3status.maxminParam == false and ofs3status.titleParam == false then
                sy = (y + h / 2) - (tsizeH / 2)
            else
                sy = (y + h / 2) - (tsizeH / 2) + theme.smallBoxSensortextOFFSET
            end
        end

        lcd.drawText(sx, sy, str)

    end

    if title ~= nil and ofs3status.titleParam == true then
        lcd.font(theme.fontTITLE)
        str = title
        tsizeW, tsizeH = lcd.getTextSize(str)

        sx = (x + w / 2) - (tsizeW / 2)
        sy = (y + h) - (tsizeH) - theme.colSpacing

        lcd.drawText(sx, sy, str)
    end

end

function ofs3status.logsBOX()

    if ofs3status.readLOGS == false then
        local history = ofs3status.readHistory()
        ofs3status.readLOGSlast = history
        ofs3status.readLOGS = true
    else
        history = ofs3status.readLOGSlast
    end

    local theme = ofs3status.getThemeInfo()
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

    -- draw the backgofs3status.round
    if ofs3status.isDARKMODE then
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

    if ofs3status.isDARKMODE then
        -- dark theme
        lcd.color(lcd.RGB(0, 0, 0, 1))
    else
        -- light theme
        lcd.color(lcd.RGB(255, 255, 255))
    end
    str = ofs3status.i8n.LogHistory
    lcd.font(theme.fontPopupTitle)
    tsizeW, tsizeH = lcd.getTextSize(str)

    boxTh = boxH / 9
    boxTy = h / 2 - boxH / 2
    boxTx = w / 2 - boxW / 2
    lcd.drawText((w / 2) - tsizeW / 2, boxTy + (boxTh / 2) - tsizeH / 2, str)

    -- close button
    lcd.drawBitmap(boxTx + boxW - boxTh, boxTy, ofs3status.gfx_close, boxTh, boxTh)
    ofs3status.closeButtonX = math.floor(boxTx + boxW - boxTh)
    ofs3status.closeButtonY = math.floor(boxTy) + theme.widgetTitleOffset
    ofs3status.closeButtonW = math.floor(boxTh)
    ofs3status.closeButtonH = math.floor(boxTh)

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
    if ofs3status.isDARKMODE then
        -- dark theme
        lcd.color(lcd.RGB(255, 255, 255, 1))
    else
        -- light theme
        lcd.color(lcd.RGB(0, 0, 0))
    end
    lcd.font(theme.fontPopupTitle)

    if theme.logsCOL1w ~= 0 then
        str = ofs3status.i8n.TIME
        tsizeW, tsizeH = lcd.getTextSize(str)
        lcd.drawText(col1x + (theme.logsCOL1w / 2) - (tsizeW / 2), theme.logsHeaderOffset + (boxTy + boxTh) + ((boxTh / 2) - (tsizeH / 2)), str)
    end

    if theme.logsCOL2w ~= 0 then
        str = ofs3status.i8n.VOLTAGE
        tsizeW, tsizeH = lcd.getTextSize(str)
        lcd.drawText((col2x) + (theme.logsCOL2w / 2) - (tsizeW / 2), theme.logsHeaderOffset + (boxTy + boxTh) + (boxTh / 2) - (tsizeH / 2), str)
    end

    if theme.logsCOL3w ~= 0 then
        str = ofs3status.i8n.AMPS
        tsizeW, tsizeH = lcd.getTextSize(str)
        lcd.drawText((col3x) + (theme.logsCOL3w / 2) - (tsizeW / 2), theme.logsHeaderOffset + (boxTy + boxTh) + (boxTh / 2) - (tsizeH / 2), str)
    end

    if theme.logsCOL4w ~= 0 then
        str = ofs3status.i8n.RPM
        tsizeW, tsizeH = lcd.getTextSize(str)
        lcd.drawText((col4x) + (theme.logsCOL4w / 2) - (tsizeW / 2), theme.logsHeaderOffset + (boxTy + boxTh) + (boxTh / 2) - (tsizeH / 2), str)
    end

    if theme.logsCOL5w ~= 0 then
        str = ofs3status.i8n.LQ
        tsizeW, tsizeH = lcd.getTextSize(str)
        lcd.drawText((col5x) + (theme.logsCOL5w / 2) - (tsizeW / 2), theme.logsHeaderOffset + (boxTy + boxTh) + (boxTh / 2) - (tsizeH / 2), str)
    end

    if theme.logsCOL6w ~= 0 then
        str = ofs3status.i8n.MCU
        tsizeW, tsizeH = lcd.getTextSize(str)
        lcd.drawText((col6x) + (theme.logsCOL6w / 2) - (tsizeW / 2), theme.logsHeaderOffset + (boxTy + boxTh) + (boxTh / 2) - (tsizeH / 2), str)
    end

    if theme.logsCOL7w ~= 0 then
        str = ofs3status.i8n.ESC
        tsizeW, tsizeH = lcd.getTextSize(str)
        lcd.drawText((col7x) + (theme.logsCOL7w / 2) - (tsizeW / 2), theme.logsHeaderOffset + (boxTy + boxTh) + (boxTh / 2) - (tsizeH / 2), str)
    end

    c = 0

    if history ~= nil then
        for index, value in ipairs(history) do
            if value ~= nil then
                if value ~= "" and value ~= nil then
                    rowH = c * boxTh

                    local rowData = ofs3status.explode(value, ",")

                    --[[ rowData is a csv string as follows
				
						ofs3status.theTIME,ofs3status.sensorVoltageMin,ofs3status.sensorVoltageMax,ofs3status.sensorFuelMin,ofs3status.sensorFuelMax,
						ofs3status.sensorRPMMin,ofs3status.sensorRPMMax,ofs3status.sensorCurrentMin,ofs3status.sensorCurrentMax,ofs3status.sensorRSSIMin,
						ofs3status.sensorRSSIMax,ofs3status.sensorTempMCUMin,ofs3status.sensorTempMCUMax,ofs3status.sensorTempESCMin,ofs3status.sensorTempESCMax	
				]] --
                    -- loop of rowData and extract each value bases on idx
                    if rowData ~= nil then

                        for idx, snsr in pairs(rowData) do

                            snsr = snsr:gsub("%s+", "")

                            if snsr ~= nil and snsr ~= "" then
                                -- time
                                if idx == 1 and theme.logsCOL1w ~= 0 then
                                    str = ofs3status.SecondsToClockAlt(snsr)
                                    tsizeW, tsizeH = lcd.getTextSize(str)
                                    lcd.drawText(col1x + (theme.logsCOL1w / 2) - (tsizeW / 2), boxTy + tsizeH / 2 + (boxTh * 2) + rowH, str)
                                end
                                -- voltagemin
                                if idx == 2 then vstr = snsr end
                                -- voltagemax
                                if idx == 3 and theme.logsCOL2w ~= 0 then
                                    str = ofs3status.round(vstr / 100, 1) .. 'v / ' .. ofs3status.round(snsr / 100, 1) .. 'v'
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
                                    str = ofs3status.round(mcustr / 100, 0) .. '° / ' .. ofs3status.round(snsr / 100, 0) .. '°'
                                    strf = ofs3status.round(mcustr / 100, 0) .. '. / ' .. ofs3status.round(snsr / 100, 0) .. '.'
                                    tsizeW, tsizeH = lcd.getTextSize(strf)
                                    lcd.drawText(col6x + (theme.logsCOL6w / 2) - (tsizeW / 2), boxTy + tsizeH / 2 + (boxTh * 2) + rowH, str)
                                end
                                -- escmin
                                if idx == 14 then escstr = snsr end
                                -- escmax
                                if idx == 15 and theme.logsCOL7w ~= 0 then
                                    str = ofs3status.round(escstr / 100, 0) .. '° / ' .. ofs3status.round(snsr / 100, 0) .. '°'
                                    strf = ofs3status.round(escstr / 100, 0) .. '. / ' .. ofs3status.round(snsr / 100, 0) .. '.'
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

function ofs3status.telemetryBoxImage(x, y, w, h, gfx)

    ofs3status.isVisible = lcd.isVisible()
    ofs3status.isDARKMODE = lcd.darkMode()
    local theme = ofs3status.getThemeInfo()

    if ofs3status.isDARKMODE then
        lcd.color(lcd.RGB(40, 40, 40))
    else
        lcd.color(lcd.RGB(240, 240, 240))
    end

    -- draw box backgofs3status.round	
    lcd.drawFilledRectangle(x, y, w, h)

    lcd.drawBitmap(x, y, gfx, w - theme.colSpacing, h - theme.colSpacing)

end

function ofs3status.paint(widget)

    ofs3status.isVisible = lcd.isVisible()
    ofs3status.isDARKMODE = lcd.darkMode()

    ofs3status.isInConfiguration = false

    local cellVoltage
    -- voltage detection
    if ofs3status.btypeParam ~= nil then
        if ofs3status.btypeParam == 0 then
            -- LiPo
            cellVoltage = 3.6
        elseif ofs3status.btypeParam == 1 then
            -- LiHv
            cellVoltage = 3.6
        elseif ofs3status.btypeParam == 2 then
            -- Lion
            cellVoltage = 3
        elseif ofs3status.btypeParam == 3 then
            -- LiFe
            cellVoltage = 2.9
        elseif ofs3status.btypeParam == 4 then
            -- NiMh
            cellVoltage = 1.1
        else
            -- LiPo (default)
            cellVoltage = 3.6
        end

        if ofs3status.sensors.voltage ~= nil then
            -- we use ofs3status.lowvoltagsenseParam is use to raise or lower sensitivity
            if ofs3status.lowvoltagsenseParam == 1 then
                zippo = 0.2
            elseif ofs3status.lowvoltagsenseParam == 2 then
                zippo = 0.1
            else
                zippo = 0
            end
            --low
            if ofs3status.sensors.voltage / 100 < ((cellVoltage * ofs3status.cellsParam) + zippo) then
                ofs3status.voltageIsLow = true
            else
                ofs3status.voltageIsLow = false
            end
            --getting low
            if ofs3status.sensors.voltage / 100 < (((cellVoltage + 0.2) * ofs3status.cellsParam) + zippo) then
                ofs3status.voltageIsGettingLow = true
            else
                ofs3status.voltageIsGettingLow = false
            end
        else
            ofs3status.voltageIsLow = false
            ofs3status.voltageIsGettingLow = false
        end
    end

    -- fuel detection
    if ofs3status.sensors.voltage ~= nil then
        if ofs3status.sensors.fuel < ofs3status.lowfuelParam then
            ofs3status.fuelIsLow = true
        else
            ofs3status.fuelIsLow = false
        end
    else
        ofs3status.fuelIsLow = false
    end

    -- fuel detection
    if ofs3status.sensors.voltage ~= nil then

        if ofs3status.sensors.fuel < (ofs3status.lowfuelParam + (ofs3status.lowfuelParam * 20)/100) then
            ofs3status.fuelIsGettingLow = true
        else
            ofs3status.fuelIsGettingLow = false
        end
    else
        ofs3status.fuelIsGettingLow = false
    end

    -- -----------------------------------------------------------------------------------------------
    -- write values to boxes
    -- -----------------------------------------------------------------------------------------------

    local theme = ofs3status.getThemeInfo()
    local w, h = lcd.getWindowSize()

    if ofs3status.isVisible then
        -- blank out display
        if ofs3status.isDARKMODE then
            -- dark theme
            lcd.color(lcd.RGB(16, 16, 16))
        else
            -- light theme
            lcd.color(lcd.RGB(209, 208, 208))
        end
        lcd.drawFilledRectangle(0, 0, w, h)

        -- hard error
        if theme.supportedRADIO ~= true then
            ofs3status.screenError(ofs3status.i8n.UNKNOWN .. " " .. environment.board)
            return
        end

        -- widget size
        if environment.board == "V20" or environment.board == "XES" or environment.board == "X20" or environment.board == "X20S" or environment.board == "X20PRO" or environment.board == "X20PROAW" then
            if w ~= 784 and h ~= 294 then
                ofs3status.screenError(ofs3status.i8n.DISPLAYSIZEINVALID)
                return
            end
        end
        if environment.board == "X18" or environment.board == "X18S" then
            smallTEXT = true
            if w ~= 472 and h ~= 191 then
                ofs3status.screenError(ofs3status.i8n.DISPLAYSIZEINVALID)
                return
            end
        end
        if environment.board == "X14" or environment.board == "X14S" then
            if w ~= 630 and h ~= 236 then
                ofs3status.screenError(ofs3status.i8n.DISPLAYSIZEINVALID)
                return
            end
        end
        if environment.board == "TWXLITE" or environment.board == "TWXLITES" then
            if w ~= 472 and h ~= 191 then
                ofs3status.screenError(ofs3status.i8n.DISPLAYSIZEINVALID)
                return
            end
        end
        if environment.board == "X10EXPRESS" or environment.board == "X10" or environment.board == "X10S" or environment.board == "X12" or environment.board == "X12S" then
            if w ~= 472 and h ~= 158 then
                ofs3status.screenError(ofs3status.i8n.DISPLAYSIZEINVALID)
                return
            end
        end

        boxW = theme.fullBoxW - theme.colSpacing
        boxH = theme.fullBoxH - theme.colSpacing

        boxHs = theme.fullBoxH / 2 - theme.colSpacing
        boxWs = theme.fullBoxW / 2 - theme.colSpacing

        -- FUEL
        if ofs3status.sensors.fuel ~= nil then

            sensorWARN = 3
            if ofs3status.fuelIsGettingLow then sensorWARN = 2 end
            if ofs3status.fuelIsLow then sensorWARN = 1 end
            

            sensorVALUE = ofs3status.sensors.fuel

            if ofs3status.sensors.fuel < 5 then sensorVALUE = "0" end

            if ofs3status.titleParam == true then
                sensorTITLE = "FUEL"
            else
                sensorTITLE = ""
            end

            if ofs3status.sensorFuelMin == 0 or ofs3status.sensorFuelMin == nil or ofs3status.theTIME == 0 then
                sensorMIN = "-"
            else
                sensorMIN = ofs3status.sensorFuelMin
            end

            if ofs3status.sensorFuelMax == 0 or ofs3status.sensorFuelMax == nil or ofs3status.theTIME == 0 then
                sensorMAX = "-"
            else
                sensorMAX = ofs3status.sensorFuelMax
            end

            sensorUNIT = "%"

            local sensorTGT = 'fuel'
            ofs3status.sensordisplay[sensorTGT] = {}
            ofs3status.sensordisplay[sensorTGT]['title'] = sensorTITLE
            ofs3status.sensordisplay[sensorTGT]['value'] = sensorVALUE
            ofs3status.sensordisplay[sensorTGT]['warn'] = sensorWARN
            ofs3status.sensordisplay[sensorTGT]['min'] = sensorMIN
            ofs3status.sensordisplay[sensorTGT]['max'] = sensorMAX
            ofs3status.sensordisplay[sensorTGT]['unit'] = sensorUNIT

        end

        -- RPM
        if ofs3status.sensors.rpm ~= nil then

            sensorVALUE = ofs3status.sensors.rpm

            if ofs3status.sensors.rpm < 5 then sensorVALUE = 0 end

            if ofs3status.titleParam == true then
                sensorTITLE = theme.title_rpm
            else
                sensorTITLE = ""
            end

            if ofs3status.sensorRPMMin == 0 or ofs3status.sensorRPMMin == nil or ofs3status.theTIME == 0 then
                sensorMIN = "-"
            else
                sensorMIN = ofs3status.sensorRPMMin
            end

            if ofs3status.sensorRPMMax == 0 or ofs3status.sensorRPMMax == nil or ofs3status.theTIME == 0 then
                sensorMAX = "-"
            else
                sensorMAX = ofs3status.sensorRPMMax
            end

            sensorUNIT = "rpm"
            sensorWARN = 0

            local sensorTGT = 'rpm'
            ofs3status.sensordisplay[sensorTGT] = {}
            ofs3status.sensordisplay[sensorTGT]['title'] = sensorTITLE
            ofs3status.sensordisplay[sensorTGT]['value'] = sensorVALUE
            ofs3status.sensordisplay[sensorTGT]['warn'] = sensorWARN
            ofs3status.sensordisplay[sensorTGT]['min'] = sensorMIN
            ofs3status.sensordisplay[sensorTGT]['max'] = sensorMAX
            ofs3status.sensordisplay[sensorTGT]['unit'] = sensorUNIT

        end

        -- VOLTAGE
        if ofs3status.sensors.voltage ~= nil then

            sensorWARN = 3
            if ofs3status.voltageIsGettingLow then sensorWARN = 2 end
            if ofs3status.voltageIsLow then sensorWARN = 1 end

            sensorVALUE = ofs3status.sensors.voltage / 100

            if sensorVALUE < 1 then sensorVALUE = 0 end

            if ofs3status.titleParam == true then
                sensorTITLE = theme.title_voltage
            else
                sensorTITLE = ""
            end

            if ofs3status.sensorVoltageMin == 0 or ofs3status.sensorVoltageMin == nil or ofs3status.theTIME == 0 then
                sensorMIN = "-"
            else
                sensorMIN = ofs3status.sensorVoltageMin / 100
            end

            if ofs3status.sensorVoltageMax == 0 or ofs3status.sensorVoltageMax == nil or ofs3status.theTIME == 0 then
                sensorMAX = "-"
            else
                sensorMAX = ofs3status.sensorVoltageMax / 100
            end

            sensorUNIT = "v"

            local sensorTGT = 'voltage'
            ofs3status.sensordisplay[sensorTGT] = {}
            ofs3status.sensordisplay[sensorTGT]['title'] = sensorTITLE
            ofs3status.sensordisplay[sensorTGT]['value'] = sensorVALUE
            ofs3status.sensordisplay[sensorTGT]['warn'] = sensorWARN
            ofs3status.sensordisplay[sensorTGT]['min'] = sensorMIN
            ofs3status.sensordisplay[sensorTGT]['max'] = sensorMAX
            ofs3status.sensordisplay[sensorTGT]['unit'] = sensorUNIT

        end

        -- CURRENT
        if ofs3status.sensors.current ~= nil then

            sensorVALUE = ofs3status.sensors.current / 10
            if ofs3status.linkUP == 0 then
                sensorVALUE = 0
            else
                if sensorVALUE == 0 then
                    local fakeC
                    if ofs3status.sensors.rpm > 5 then
                        fakeC = 1
                    elseif ofs3status.sensors.rpm > 50 then
                        fakeC = 2
                    elseif ofs3status.sensors.rpm > 100 then
                        fakeC = 3
                    elseif ofs3status.sensors.rpm > 200 then
                        fakeC = 4
                    elseif ofs3status.sensors.rpm > 500 then
                        fakeC = 5
                    elseif ofs3status.sensors.rpm > 1000 then
                        fakeC = 6
                    else
                        if ofs3status.sensors.voltage > 0 then
                            fakeC = math.random(1, 3) / 10
                        else
                            fakeC = 0
                        end
                    end
                    sensorVALUE = fakeC
                end
            end

            if ofs3status.titleParam == true then
                sensorTITLE = theme.title_current
            else
                sensorTITLE = ""
            end

            if ofs3status.sensorCurrentMin == 0 or ofs3status.sensorCurrentMin == nil or ofs3status.theTIME == 0 then
                sensorMIN = "-"
            else
                sensorMIN = ofs3status.sensorCurrentMin / 10
            end

            if ofs3status.sensorCurrentMax == 0 or ofs3status.sensorCurrentMax == nil or ofs3status.theTIME == 0 then
                sensorMAX = "-"
            else
                sensorMAX = ofs3status.sensorCurrentMax / 10
            end

            sensorUNIT = "A"
            sensorWARN = 0

            local sensorTGT = 'current'
            ofs3status.sensordisplay[sensorTGT] = {}
            ofs3status.sensordisplay[sensorTGT]['title'] = sensorTITLE
            ofs3status.sensordisplay[sensorTGT]['value'] = sensorVALUE
            ofs3status.sensordisplay[sensorTGT]['warn'] = sensorWARN
            ofs3status.sensordisplay[sensorTGT]['min'] = sensorMIN
            ofs3status.sensordisplay[sensorTGT]['max'] = sensorMAX
            ofs3status.sensordisplay[sensorTGT]['unit'] = sensorUNIT

        end

        -- TEMP ESC
        if ofs3status.sensors.temp_esc ~= nil then

            sensorVALUE = ofs3status.round(ofs3status.sensors.temp_esc / 100, 0)

            if sensorVALUE < 1 then sensorVALUE = 0 end

            if ofs3status.titleParam == true then
                sensorTITLE = theme.title_tempESC
            else
                sensorTITLE = ""
            end

            if ofs3status.sensorTempESCMin == 0 or ofs3status.sensorTempESCMin == nil or ofs3status.theTIME == 0 then
                sensorMIN = "-"
            else
                sensorMIN = ofs3status.round(ofs3status.sensorTempESCMin / 100, 0)
            end

            if ofs3status.sensorTempESCMax == 0 or ofs3status.sensorTempESCMax == nil or ofs3status.theTIME == 0 then
                sensorMAX = "-"
            else
                sensorMAX = ofs3status.round(ofs3status.sensorTempESCMax / 100, 0)
            end

            sensorUNIT = "°"
            sensorWARN = 0

            local sensorTGT = 'temp_esc'
            ofs3status.sensordisplay[sensorTGT] = {}
            ofs3status.sensordisplay[sensorTGT]['title'] = sensorTITLE
            ofs3status.sensordisplay[sensorTGT]['value'] = sensorVALUE
            ofs3status.sensordisplay[sensorTGT]['warn'] = sensorWARN
            ofs3status.sensordisplay[sensorTGT]['min'] = sensorMIN
            ofs3status.sensordisplay[sensorTGT]['max'] = sensorMAX
            ofs3status.sensordisplay[sensorTGT]['unit'] = sensorUNIT

        end

        -- TEMP MCU
        if ofs3status.sensors.temp_mcu ~= nil then

            sensorVALUE = ofs3status.round(ofs3status.sensors.temp_mcu / 100, 0)

            if sensorVALUE < 1 then sensorVALUE = 0 end

            if ofs3status.titleParam == true then
                sensorTITLE = theme.title_tempMCU
            else
                sensorTITLE = ""
            end

            if ofs3status.sensorTempMCUMin == 0 or ofs3status.sensorTempMCUMin == nil or ofs3status.theTIME == 0 then
                sensorMIN = "-"
            else
                sensorMIN = ofs3status.round(ofs3status.sensorTempMCUMin / 100, 0)
            end

            if ofs3status.sensorTempMCUMax == 0 or ofs3status.sensorTempMCUMax == nil or ofs3status.theTIME == 0 then
                sensorMAX = "-"
            else
                sensorMAX = ofs3status.round(ofs3status.sensorTempMCUMax / 100, 0)
            end

            sensorUNIT = "°"
            sensorWARN = 0

            local sensorTGT = 'temp_mcu'
            ofs3status.sensordisplay[sensorTGT] = {}
            ofs3status.sensordisplay[sensorTGT]['title'] = sensorTITLE
            ofs3status.sensordisplay[sensorTGT]['value'] = sensorVALUE
            ofs3status.sensordisplay[sensorTGT]['warn'] = sensorWARN
            ofs3status.sensordisplay[sensorTGT]['min'] = sensorMIN
            ofs3status.sensordisplay[sensorTGT]['max'] = sensorMAX
            ofs3status.sensordisplay[sensorTGT]['unit'] = sensorUNIT

        end

        -- RSSI
        if ofs3status.sensors.rssi ~= nil and (ofs3status.quadBoxParam == 0 or ofs3status.quadBoxParam == 1) then

            sensorVALUE = ofs3status.sensors.rssi

            if sensorVALUE < 1 then sensorVALUE = 0 end

            if ofs3status.titleParam == true then
                sensorTITLE = theme.title_rssi
            else
                sensorTITLE = ""
            end

            if ofs3status.sensorRSSIMin == 0 or ofs3status.sensorRSSIMin == nil then
                sensorMIN = "-"
            else
                sensorMIN = ofs3status.sensorRSSIMin
            end

            if ofs3status.sensorRSSIMax == 0 or ofs3status.sensorRSSIMax == nil then
                sensorMAX = "-"
            else
                sensorMAX = ofs3status.sensorRSSIMax
            end

            sensorUNIT = "%"
            sensorWARN = 0

            local sensorTGT = 'rssi'
            ofs3status.sensordisplay[sensorTGT] = {}
            ofs3status.sensordisplay[sensorTGT]['title'] = sensorTITLE
            ofs3status.sensordisplay[sensorTGT]['value'] = sensorVALUE
            ofs3status.sensordisplay[sensorTGT]['warn'] = sensorWARN
            ofs3status.sensordisplay[sensorTGT]['min'] = sensorMIN
            ofs3status.sensordisplay[sensorTGT]['max'] = sensorMAX
            ofs3status.sensordisplay[sensorTGT]['unit'] = sensorUNIT

        end

        -- mah
        if ofs3status.sensors.mah ~= nil then

            sensorVALUE = ofs3status.sensors.mah

            if sensorVALUE < 1 then sensorVALUE = 0 end

            if ofs3status.titleParam == true then
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
            ofs3status.sensordisplay[sensorTGT] = {}
            ofs3status.sensordisplay[sensorTGT]['title'] = sensorTITLE
            ofs3status.sensordisplay[sensorTGT]['value'] = sensorVALUE
            ofs3status.sensordisplay[sensorTGT]['warn'] = sensorWARN
            ofs3status.sensordisplay[sensorTGT]['min'] = sensorMIN
            ofs3status.sensordisplay[sensorTGT]['max'] = sensorMAX
            ofs3status.sensordisplay[sensorTGT]['unit'] = sensorUNIT
        end

        -- TIMER
        sensorMIN = nil
        sensorMAX = nil

        if ofs3status.theTIME ~= nil or ofs3status.theTIME == 0 then
            str = ofs3status.SecondsToClock(ofs3status.theTIME)
        else
            str = "00:00:00"
        end

        if ofs3status.titleParam == true then
            sensorTITLE = theme.title_time
        else
            sensorTITLE = ""
        end

        sensorVALUE = str

        sensorUNIT = ""
        sensorWARN = 0

        local sensorTGT = 'timer'
        ofs3status.sensordisplay[sensorTGT] = {}
        ofs3status.sensordisplay[sensorTGT]['title'] = sensorTITLE
        ofs3status.sensordisplay[sensorTGT]['value'] = sensorVALUE
        ofs3status.sensordisplay[sensorTGT]['warn'] = sensorWARN
        ofs3status.sensordisplay[sensorTGT]['min'] = sensorMIN
        ofs3status.sensordisplay[sensorTGT]['max'] = sensorMAX
        ofs3status.sensordisplay[sensorTGT]['unit'] = sensorUNIT

        -- GOV MODE
        if ofs3status.govmodeParam == 0 then
            if ofs3status.sensors.govmode == nil then ofs3status.sensors.govmode = "INIT" end
            str = ofs3status.sensors.govmode
            sensorTITLE = theme.title_governor
        else
            str = ofs3status.sensors.fm
            sensorTITLE = theme.title_fm
        end
        sensorVALUE = str

        if ofs3status.titleParam ~= true then sensorTITLE = "" end

        sensorUNIT = ""
        sensorWARN = 0
        sensorMIN = nil
        sensorMAX = nil

        local sensorTGT = 'governor'
        ofs3status.sensordisplay[sensorTGT] = {}
        ofs3status.sensordisplay[sensorTGT]['title'] = sensorTITLE
        ofs3status.sensordisplay[sensorTGT]['value'] = sensorVALUE
        ofs3status.sensordisplay[sensorTGT]['warn'] = ofs3status.govColorFlag(sensorVALUE)
        ofs3status.sensordisplay[sensorTGT]['min'] = sensorMIN
        ofs3status.sensordisplay[sensorTGT]['max'] = sensorMAX
        ofs3status.sensordisplay[sensorTGT]['unit'] = sensorUNIT

        -- loop throught 6 box and link into ofs3status.sensordisplay to choose where to put things
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
                sensorTGT = ofs3status.layoutBox1Param
            end
            if c == 2 then
                posX = 0 + theme.colSpacing + boxW
                posY = theme.colSpacing
                sensorTGT = ofs3status.layoutBox2Param
            end
            if c == 3 then
                posX = 0 + theme.colSpacing + boxW + theme.colSpacing + boxW
                posY = theme.colSpacing
                sensorTGT = ofs3status.layoutBox3Param
            end
            if c == 4 then
                posX = 0
                posY = theme.colSpacing + boxH + theme.colSpacing
                sensorTGT = ofs3status.layoutBox4Param
            end
            if c == 5 then
                posX = 0 + theme.colSpacing + boxW
                posY = theme.colSpacing + boxH + theme.colSpacing
                sensorTGT = ofs3status.layoutBox5Param
            end
            if c == 6 then
                posX = 0 + theme.colSpacing + boxW + theme.colSpacing + boxW
                posY = theme.colSpacing + boxH + theme.colSpacing
                sensorTGT = ofs3status.layoutBox6Param
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
            if ofs3status.sensordisplay[sensorTGT] ~= nil then
                -- all std values.  =
                sensorVALUE = ofs3status.sensordisplay[sensorTGT]['value']
                sensorUNIT = ofs3status.sensordisplay[sensorTGT]['unit']
                sensorMIN = ofs3status.sensordisplay[sensorTGT]['min']
                sensorMAX = ofs3status.sensordisplay[sensorTGT]['max']
                sensorWARN = ofs3status.sensordisplay[sensorTGT]['warn']
                sensorTITLE = ofs3status.sensordisplay[sensorTGT]['title']
                ofs3status.telemetryBox(posX, posY, boxW, boxH, sensorTITLE, sensorVALUE, sensorUNIT, smallBOX, sensorWARN, sensorMIN, sensorMAX)
            else

                if sensorTGT == 'image' then
                    -- IMAGE
                    if ofs3status.gfx_model ~= nil then
                        ofs3status.telemetryBoxImage(posX, posY, boxW, boxH, ofs3status.gfx_model)
                    else
                        ofs3status.telemetryBoxImage(posX, posY, boxW, boxH, ofs3status.gfx_heli)
                    end
                end

                if sensorTGT == 'image__gov' then
                    -- IMAGE + GOVERNOR
                    if ofs3status.gfx_model ~= nil then
                        ofs3status.telemetryBoxImage(posX, posY, boxW, boxH / 2 - (theme.colSpacing / 2), ofs3status.gfx_model)
                    else
                        ofs3status.telemetryBoxImage(posX, posY, boxW, boxH / 2 - (theme.colSpacing / 2), ofs3status.gfx_heli)
                    end

                    sensorTGT = "governor"
                    sensorVALUE = ofs3status.sensordisplay[sensorTGT]['value']
                    sensorUNIT = ofs3status.sensordisplay[sensorTGT]['unit']
                    sensorMIN = ofs3status.sensordisplay[sensorTGT]['min']
                    sensorMAX = ofs3status.sensordisplay[sensorTGT]['max']
                    sensorWARN = ofs3status.sensordisplay[sensorTGT]['warn']
                    sensorTITLE = ofs3status.sensordisplay[sensorTGT]['title']

                    smallBOX = true
                    ofs3status.telemetryBox(posX, posY + boxH / 2 + (theme.colSpacing / 2), boxW, boxH / 2 - theme.colSpacing / 2, sensorTITLE, sensorVALUE, sensorUNIT, smallBOX, sensorWARN, sensorMIN,
                                           sensorMAX)

                end

                if sensorTGT == 'lq__gov' then
                    -- LQ + GOV
                    sensorTGT = "rssi"
                    sensorVALUE = ofs3status.sensordisplay[sensorTGT]['value']
                    sensorUNIT = ofs3status.sensordisplay[sensorTGT]['unit']
                    sensorMIN = ofs3status.sensordisplay[sensorTGT]['min']
                    sensorMAX = ofs3status.sensordisplay[sensorTGT]['max']
                    sensorWARN = ofs3status.sensordisplay[sensorTGT]['warn']
                    sensorTITLE = ofs3status.sensordisplay[sensorTGT]['title']

                    smallBOX = true
                    ofs3status.telemetryBox(posX, posY, boxW, boxH / 2 - (theme.colSpacing / 2), sensorTITLE, sensorVALUE, sensorUNIT, smallBOX, sensorWARN, sensorMIN, sensorMAX)

                    sensorTGT = "governor"
                    sensorVALUE = ofs3status.sensordisplay[sensorTGT]['value']
                    sensorUNIT = ofs3status.sensordisplay[sensorTGT]['unit']
                    sensorMIN = ofs3status.sensordisplay[sensorTGT]['min']
                    sensorMAX = ofs3status.sensordisplay[sensorTGT]['max']
                    sensorWARN = ofs3status.sensordisplay[sensorTGT]['warn']
                    sensorTITLE = ofs3status.sensordisplay[sensorTGT]['title']

                    smallBOX = true
                    ofs3status.telemetryBox(posX, posY + boxH / 2 + (theme.colSpacing / 2), boxW, boxH / 2 - theme.colSpacing / 2, sensorTITLE, sensorVALUE, sensorUNIT, smallBOX, sensorWARN, sensorMIN,
                                           sensorMAX)

                end

                if sensorTGT == 'rssi__timer' then

                    sensorTGT = "rssi"
                    if ofs3status.sensordisplay[sensorTGT] ~= nil then
                        sensorVALUE = ofs3status.sensordisplay[sensorTGT]['value']
                        sensorUNIT = ofs3status.sensordisplay[sensorTGT]['unit']
                        sensorMIN = ofs3status.sensordisplay[sensorTGT]['min']
                        sensorMAX = ofs3status.sensordisplay[sensorTGT]['max']
                        sensorWARN = ofs3status.sensordisplay[sensorTGT]['warn']
                        sensorTITLE = ofs3status.sensordisplay[sensorTGT]['title']

                        smallBOX = true
                        ofs3status.telemetryBox(posX, posY, boxW, boxH / 2 - (theme.colSpacing / 2), sensorTITLE, sensorVALUE, sensorUNIT, smallBOX, sensorWARN, sensorMIN, sensorMAX)
                    end

                    sensorTGT = "timer"
                    sensorVALUE = ofs3status.sensordisplay[sensorTGT]['value']
                    sensorUNIT = ofs3status.sensordisplay[sensorTGT]['unit']
                    sensorMIN = ofs3status.sensordisplay[sensorTGT]['min']
                    sensorMAX = ofs3status.sensordisplay[sensorTGT]['max']
                    sensorWARN = ofs3status.sensordisplay[sensorTGT]['warn']
                    sensorTITLE = ofs3status.sensordisplay[sensorTGT]['title']

                    smallBOX = true
                    ofs3status.telemetryBox(posX, posY + boxH / 2 + (theme.colSpacing / 2), boxW, boxH / 2 - theme.colSpacing / 2, sensorTITLE, sensorVALUE, sensorUNIT, smallBOX, sensorWARN, sensorMIN,
                                           sensorMAX)

                end

                if sensorTGT == 'temp_esc__temp_mcu' then

                    sensorTGT = "temp_esc"
                    sensorVALUE = ofs3status.sensordisplay[sensorTGT]['value']
                    sensorUNIT = ofs3status.sensordisplay[sensorTGT]['unit']
                    sensorMIN = ofs3status.sensordisplay[sensorTGT]['min']
                    sensorMAX = ofs3status.sensordisplay[sensorTGT]['max']
                    sensorWARN = ofs3status.sensordisplay[sensorTGT]['warn']
                    sensorTITLE = ofs3status.sensordisplay[sensorTGT]['title']

                    smallBOX = true
                    ofs3status.telemetryBox(posX, posY, boxW, boxH / 2 - (theme.colSpacing / 2), sensorTITLE, sensorVALUE, sensorUNIT, smallBOX, sensorWARN, sensorMIN, sensorMAX)

                    sensorTGT = "temp_mcu"
                    sensorVALUE = ofs3status.sensordisplay[sensorTGT]['value']
                    sensorUNIT = ofs3status.sensordisplay[sensorTGT]['unit']
                    sensorMIN = ofs3status.sensordisplay[sensorTGT]['min']
                    sensorMAX = ofs3status.sensordisplay[sensorTGT]['max']
                    sensorWARN = ofs3status.sensordisplay[sensorTGT]['warn']
                    sensorTITLE = ofs3status.sensordisplay[sensorTGT]['title']

                    smallBOX = true
                    ofs3status.telemetryBox(posX, posY + boxH / 2 + (theme.colSpacing / 2), boxW, boxH / 2 - theme.colSpacing / 2, sensorTITLE, sensorVALUE, sensorUNIT, smallBOX, sensorWARN, sensorMIN,
                                           sensorMAX)

                end

                if sensorTGT == 'voltage__fuel' then

                    sensorTGT = "voltage"
                    sensorVALUE = ofs3status.sensordisplay[sensorTGT]['value']
                    sensorUNIT = ofs3status.sensordisplay[sensorTGT]['unit']
                    sensorMIN = ofs3status.sensordisplay[sensorTGT]['min']
                    sensorMAX = ofs3status.sensordisplay[sensorTGT]['max']
                    sensorWARN = ofs3status.sensordisplay[sensorTGT]['warn']
                    sensorTITLE = ofs3status.sensordisplay[sensorTGT]['title']

                    smallBOX = true
                    ofs3status.telemetryBox(posX, posY, boxW, boxH / 2 - (theme.colSpacing / 2), sensorTITLE, sensorVALUE, sensorUNIT, smallBOX, sensorWARN, sensorMIN, sensorMAX)

                    sensorTGT = "fuel"
                    sensorVALUE = ofs3status.sensordisplay[sensorTGT]['value']
                    sensorUNIT = ofs3status.sensordisplay[sensorTGT]['unit']
                    sensorMIN = ofs3status.sensordisplay[sensorTGT]['min']
                    sensorMAX = ofs3status.sensordisplay[sensorTGT]['max']
                    sensorWARN = ofs3status.sensordisplay[sensorTGT]['warn']
                    sensorTITLE = ofs3status.sensordisplay[sensorTGT]['title']

                    smallBOX = true
                    ofs3status.telemetryBox(posX, posY + boxH / 2 + (theme.colSpacing / 2), boxW, boxH / 2 - theme.colSpacing / 2, sensorTITLE, sensorVALUE, sensorUNIT, smallBOX, sensorWARN, sensorMIN,
                                           sensorMAX)

                end

                if sensorTGT == 'voltage__current' then

                    sensorTGT = "voltage"
                    sensorVALUE = ofs3status.sensordisplay[sensorTGT]['value']
                    sensorUNIT = ofs3status.sensordisplay[sensorTGT]['unit']
                    sensorMIN = ofs3status.sensordisplay[sensorTGT]['min']
                    sensorMAX = ofs3status.sensordisplay[sensorTGT]['max']
                    sensorWARN = ofs3status.sensordisplay[sensorTGT]['warn']
                    sensorTITLE = ofs3status.sensordisplay[sensorTGT]['title']

                    smallBOX = true
                    ofs3status.telemetryBox(posX, posY, boxW, boxH / 2 - (theme.colSpacing / 2), sensorTITLE, sensorVALUE, sensorUNIT, smallBOX, sensorWARN, sensorMIN, sensorMAX)

                    sensorTGT = "current"
                    sensorVALUE = ofs3status.sensordisplay[sensorTGT]['value']
                    sensorUNIT = ofs3status.sensordisplay[sensorTGT]['unit']
                    sensorMIN = ofs3status.sensordisplay[sensorTGT]['min']
                    sensorMAX = ofs3status.sensordisplay[sensorTGT]['max']
                    sensorWARN = ofs3status.sensordisplay[sensorTGT]['warn']
                    sensorTITLE = ofs3status.sensordisplay[sensorTGT]['title']

                    smallBOX = true
                    ofs3status.telemetryBox(posX, posY + boxH / 2 + (theme.colSpacing / 2), boxW, boxH / 2 - theme.colSpacing / 2, sensorTITLE, sensorVALUE, sensorUNIT, smallBOX, sensorWARN, sensorMIN,
                                           sensorMAX)

                end

                if sensorTGT == 'voltage__mah' then

                    sensorTGT = "voltage"
                    sensorVALUE = ofs3status.sensordisplay[sensorTGT]['value']
                    sensorUNIT = ofs3status.sensordisplay[sensorTGT]['unit']
                    sensorMIN = ofs3status.sensordisplay[sensorTGT]['min']
                    sensorMAX = ofs3status.sensordisplay[sensorTGT]['max']
                    sensorWARN = ofs3status.sensordisplay[sensorTGT]['warn']
                    sensorTITLE = ofs3status.sensordisplay[sensorTGT]['title']

                    smallBOX = true
                    ofs3status.telemetryBox(posX, posY, boxW, boxH / 2 - (theme.colSpacing / 2), sensorTITLE, sensorVALUE, sensorUNIT, smallBOX, sensorWARN, sensorMIN, sensorMAX)

                    sensorTGT = "mah"
                    sensorVALUE = ofs3status.sensordisplay[sensorTGT]['value']
                    sensorUNIT = ofs3status.sensordisplay[sensorTGT]['unit']
                    sensorMIN = ofs3status.sensordisplay[sensorTGT]['min']
                    sensorMAX = ofs3status.sensordisplay[sensorTGT]['max']
                    sensorWARN = ofs3status.sensordisplay[sensorTGT]['warn']
                    sensorTITLE = ofs3status.sensordisplay[sensorTGT]['title']

                    smallBOX = true
                    ofs3status.telemetryBox(posX, posY + boxH / 2 + (theme.colSpacing / 2), boxW, boxH / 2 - theme.colSpacing / 2, sensorTITLE, sensorVALUE, sensorUNIT, smallBOX, sensorWARN, sensorMIN,
                                           sensorMAX)

                end

                if sensorTGT == 'rssi_timer_temp_esc_temp_mcu' then

                    sensorTGT = "rssi"
                    sensorVALUE = ofs3status.sensordisplay[sensorTGT]['value']
                    sensorUNIT = ofs3status.sensordisplay[sensorTGT]['unit']
                    sensorMIN = ofs3status.sensordisplay[sensorTGT]['min']
                    sensorMAX = ofs3status.sensordisplay[sensorTGT]['max']
                    sensorWARN = ofs3status.sensordisplay[sensorTGT]['warn']
                    sensorTITLE = ofs3status.sensordisplay[sensorTGT]['title']

                    smallBOX = true
                    ofs3status.telemetryBox(posX, posY, boxW / 2 - (theme.colSpacing / 2), boxH / 2 - (theme.colSpacing / 2), sensorTITLE, sensorVALUE, sensorUNIT, smallBOX, sensorWARN, sensorMIN,
                                           sensorMAX)

                    sensorTGT = "timer"
                    sensorVALUE = ofs3status.sensordisplay[sensorTGT]['value']
                    sensorUNIT = ofs3status.sensordisplay[sensorTGT]['unit']
                    sensorMIN = ofs3status.sensordisplay[sensorTGT]['min']
                    sensorMAX = ofs3status.sensordisplay[sensorTGT]['max']
                    sensorWARN = ofs3status.sensordisplay[sensorTGT]['warn']
                    sensorTITLE = ofs3status.sensordisplay[sensorTGT]['title']

                    smallBOX = true
                    ofs3status.telemetryBox(posX + boxW / 2 + (theme.colSpacing / 2), posY, boxW / 2 - (theme.colSpacing / 2), boxH / 2 - (theme.colSpacing / 2), sensorTITLE, sensorVALUE, sensorUNIT,
                                           smallBOX, sensorWARN, sensorMIN, sensorMAX)

                    sensorTGT = "temp_esc"
                    sensorVALUE = ofs3status.sensordisplay[sensorTGT]['value']
                    sensorUNIT = ofs3status.sensordisplay[sensorTGT]['unit']
                    sensorMIN = ofs3status.sensordisplay[sensorTGT]['min']
                    sensorMAX = ofs3status.sensordisplay[sensorTGT]['max']
                    sensorWARN = ofs3status.sensordisplay[sensorTGT]['warn']
                    sensorTITLE = ofs3status.sensordisplay[sensorTGT]['title']

                    smallBOX = true
                    ofs3status.telemetryBox(posX, posY + boxH / 2 + (theme.colSpacing / 2), boxW / 2 - (theme.colSpacing / 2), boxH / 2 - theme.colSpacing / 2, sensorTITLE, sensorVALUE, sensorUNIT,
                                           smallBOX, sensorWARN, sensorMIN, sensorMAX)

                    sensorTGT = "temp_mcu"
                    sensorVALUE = ofs3status.sensordisplay[sensorTGT]['value']
                    sensorUNIT = ofs3status.sensordisplay[sensorTGT]['unit']
                    sensorMIN = ofs3status.sensordisplay[sensorTGT]['min']
                    sensorMAX = ofs3status.sensordisplay[sensorTGT]['max']
                    sensorWARN = ofs3status.sensordisplay[sensorTGT]['warn']
                    sensorTITLE = ofs3status.sensordisplay[sensorTGT]['title']

                    smallBOX = true
                    ofs3status.telemetryBox(posX + boxW / 2 + (theme.colSpacing / 2), posY + boxH / 2 + (theme.colSpacing / 2), boxW / 2 - (theme.colSpacing / 2), boxH / 2 - (theme.colSpacing / 2),
                                           sensorTITLE, sensorVALUE, sensorUNIT, smallBOX, sensorWARN, sensorMIN, sensorMAX)

                end

                if sensorTGT == 'max_current' then

                    sensorTGT = "current"
                    sensorVALUE = ofs3status.sensordisplay[sensorTGT]['value']
                    sensorUNIT = ofs3status.sensordisplay[sensorTGT]['unit']
                    sensorMIN = ofs3status.sensordisplay[sensorTGT]['min']
                    sensorMAX = ofs3status.sensordisplay[sensorTGT]['max']
                    sensorWARN = ofs3status.sensordisplay[sensorTGT]['warn']
                    sensorTITLE = ofs3status.sensordisplay[sensorTGT]['title']

                    if sensorMAX == "-" or sensorMAX == nil then sensorMAX = 0 end

                    smallBOX = false
                    ofs3status.telemetryBox(posX, posY, boxW, boxH, "MAX " .. sensorTITLE, sensorMAX, sensorUNIT, smallBOX)

                end

            end

            c = c + 1
        end

        if ofs3status.linkUP == 0 then ofs3status.noTelem() end

        if ofs3status.showLOGS ~= nil then if ofs3status.showLOGS then ofs3status.logsBOX() end end

    end


end

function ofs3status.ReverseTable(t)
    local reversedTable = {}
    local itemCount = #t
    for k, v in ipairs(t) do reversedTable[itemCount + 1 - k] = v end
    return reversedTable
end

function ofs3status.getChannelValue(ich)
    local src = system.getSource({category = CATEGORY_CHANNEL, member = (ich - 1), options = 0})
    return math.floor((src:value() / 10.24) + 0.5)
end

function ofs3status.getSensors()
    if ofs3status.isInConfiguration == true then return ofs3status.sensors end

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

        if ofs3status.idleupswitchParam ~= nil and armswitchParam ~= nil then
            if ofs3status.idleupswitchParam:state() == true and armswitchParam:state() == true then
                current = math.random(100, 120)
                rpm = math.random(90, 100)
            else
                current = 0
                rpm = 0
            end
        end

    elseif ofs3status.linkUP ~= 0 then

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
                    fuel = ofs3status.round(fuel, 0)
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

            rssi = ofs3status.linkUP

        end
    else
        -- we have no link.  do something
        -- print("NO LINK")
        -- keep looking for new sensor
        ofs3status.rssiSensor = ofs3status.getRssiSensor()

        voltage = 0
        rpm = 0
        current = 0
        temp_esc = 0
        temp_mcu = 0
        fuel = 0
        mah = 0
        govmode = "-"
        fm = "-"
        rssi = ofs3status.linkUP
        adjsource = 0
        adjvalue = 0
    end

    -- calc fuel percentage if needed
    if ofs3status.calcfuelParam == true then

        if ofs3status.btypeParam == 0 then
            -- LiPo
            maxCellVoltage = 4.2
            minCellVoltage = 3.2
        elseif ofs3status.btypeParam == 1 then
            -- LiHv
            maxCellVoltage = 4.35
            minCellVoltage = 3.4
        elseif ofs3status.btypeParam == 2 then
            -- Lion
            maxCellVoltage = 2.4
            minCellVoltage = 3
        elseif ofs3status.btypeParam == 3 then
            -- LiFe
            maxCellVoltage = 3.65
            minCellVoltage = 2.5
        elseif ofs3status.btypeParam == 4 then
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
        avgCellVoltage = (voltage / 100) / ofs3status.cellsParam
        batteryPercentage = 100 * (avgCellVoltage - minCellVoltage) / ((maxCellVoltage + (0.00000001 * ofs3status.cellsParam)) - minCellVoltage)
        fuel = batteryPercentage
        fuel = ofs3status.round(fuel, 0)

        if fuel > 100 then fuel = 100 end

    end

    -- convert from C to F
    -- Divide by 5, then multiply by 9, then add 32
    if ofs3status.tempconvertParamMCU == 2 then
        temp_mcu = ((temp_mcu / 5) * 9) + 32
        temp_mcu = ofs3status.round(temp_mcu, 0)
    end
    -- convert from F to C
    -- Deduct 32, then multiply by 5, then divide by 9
    if ofs3status.tempconvertParamMCU == 3 then
        temp_mcu = ((temp_mcu - 32) * 5) / 9
        temp_mcu = ofs3status.round(temp_mcu, 0)
    end

    -- convert from C to F
    -- Divide by 5, then multiply by 9, then add 32
    if ofs3status.tempconvertParamESC == 2 then
        temp_esc = ((temp_esc / 5) * 9) + 32
        temp_esc = ofs3status.round(temp_esc, 0)
    end
    -- convert from F to C
    -- Deduct 32, then multiply by 5, then divide by 9
    if ofs3status.tempconvertParamESC == 3 then
        temp_esc = ((temp_esc - 32) * 5) / 9
        temp_esc = ofs3status.round(temp_esc, 0)
    end

    -- set flag to ofs3status.refresh screen or not

    voltage = ofs3status.kalmanVoltage(voltage, ofs3status.sensors.voltage)
    voltage = ofs3status.round(voltage, 0)

    rpm = ofs3status.kalmanRPM(rpm, ofs3status.sensors.rpm)
    rpm = ofs3status.round(rpm, 0)

    temp_mcu = ofs3status.kalmanTempMCU(temp_mcu, ofs3status.sensors.temp_mcu)
    temp_mcu = ofs3status.round(temp_mcu, 0)

    temp_esc = ofs3status.kalmanTempESC(temp_esc, ofs3status.sensors.temp_esc)
    temp_esc = ofs3status.round(temp_esc, 0)

    current = ofs3status.kalmanCurrent(current, ofs3status.sensors.current)
    current = ofs3status.round(current, 0)

    rssi = ofs3status.kalmanRSSI(rssi, ofs3status.sensors.rssi)
    rssi = ofs3status.round(rssi, 0)

    -- do / dont do voltage based on stick position
    if ofs3status.lowvoltagStickParam == nil then ofs3status.lowvoltagStickParam = 0 end
    if ofs3status.lowvoltagStickCutoffParam == nil then ofs3status.lowvoltagStickCutoffParam = 80 end

    if (ofs3status.lowvoltagStickParam ~= 0) then
        ofs3status.lvStickannouncement = false
        for i, v in ipairs(ofs3status.lvStickOrder[ofs3status.lowvoltagStickParam]) do
            if ofs3status.lvStickannouncement == false then -- we skip more if any stick has resulted in announcement
                if math.abs(ofs3status.getChannelValue(v)) >= ofs3status.lowvoltagStickCutoffParam then ofs3status.lvStickannouncement = true end
            end
        end
    end

    -- intercept governor for non rf governor helis
    if armswitchParam ~= nil or ofs3status.idleupswitchParam ~= nil then
        if ofs3status.govmodeParam == 1 then
            if armswitchParam:state() == true then
                govmode = "ARMED"
                fm = "ARMED"
            else
                govmode = "DISARMED"
                fm = "DISARMED"
            end

            if armswitchParam:state() == true then
                if ofs3status.idleupswitchParam:state() == true then
                    govmode = "ACTIVE"
                    fm = "ACTIVE"
                else
                    govmode = "THR-OFF"
                    fm = "THR-OFF"
                end

            end
        end

    end

    if ofs3status.sensors.voltage ~= voltage then ofs3status.refresh = true end
    if ofs3status.sensors.rpm ~= rpm then ofs3status.refresh = true end
    if ofs3status.sensors.current ~= current then ofs3status.refresh = true end
    if ofs3status.sensors.temp_esc ~= temp_esc then ofs3status.refresh = true end
    if ofs3status.sensors.temp_mcu ~= temp_mcu then ofs3status.refresh = true end
    if ofs3status.sensors.govmode ~= govmode then ofs3status.refresh = true end
    if ofs3status.sensors.fuel ~= fuel then ofs3status.refresh = true end
    if ofs3status.sensors.mah ~= mah then ofs3status.refresh = true end
    if ofs3status.sensors.rssi ~= rssi then ofs3status.refresh = true end
    if ofs3status.sensors.fm ~= CURRENT_FLIGHT_MODE then ofs3status.refresh = true end

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
    ofs3status.sensors = ret

    return ret
end

function ofs3status.sensorsMAXMIN(sensors)

    if ofs3status.linkUP ~= 0 and ofs3status.theTIME ~= nil and ofs3status.idleupdelayParam ~= nil then

        -- hold back - to early to get a reading
        if ofs3status.theTIME <= ofs3status.idleupdelayParam then
            ofs3status.sensorVoltageMin = 0
            ofs3status.sensorVoltageMax = 0
            ofs3status.sensorFuelMin = 0
            ofs3status.sensorFuelMax = 0
            ofs3status.sensorRPMMin = 0
            ofs3status.sensorRPMMax = 0
            ofs3status.sensorCurrentMin = 0
            ofs3status.sensorCurrentMax = 0
            ofs3status.sensorRSSIMin = 0
            ofs3status.sensorRSSIMax = 0
            ofs3status.sensorTempESCMin = 0
            ofs3status.sensorTempMCUMax = 0
        end

        -- prob put in a screen/audio alert for initialising
        if ofs3status.theTIME >= 1 and ofs3status.theTIME < ofs3status.idleupdelayParam then end

        if ofs3status.theTIME >= ofs3status.idleupdelayParam then

            local idleupdelayOFFSET = 2

            -- record initial parameters for max/min
            if ofs3status.theTIME >= ofs3status.idleupdelayParam and ofs3status.theTIME <= (ofs3status.idleupdelayParam + idleupdelayOFFSET) then
                ofs3status.sensorVoltageMin = sensors.voltage
                ofs3status.sensorVoltageMax = sensors.voltage
                ofs3status.sensorFuelMin = sensors.fuel
                ofs3status.sensorFuelMax = sensors.fuel
                ofs3status.sensorRPMMin = sensors.rpm
                ofs3status.sensorRPMMax = sensors.rpm
                if sensors.current == 0 then
                    ofs3status.sensorCurrentMin = 1
                else
                    ofs3status.sensorCurrentMin = sensors.current
                end
                ofs3status.sensorCurrentMax = sensors.current

                ofs3status.sensorRSSIMin = sensors.rssi
                ofs3status.sensorRSSIMax = sensors.rssi
                ofs3status.sensorTempESCMin = sensors.temp_esc
                ofs3status.sensorTempESCMax = sensors.temp_esc
                ofs3status.sensorTempMCUMin = sensors.temp_mcu
                ofs3status.sensorTempMCUMax = sensors.temp_mcu
                motorNearlyActive = 0
            end

            if ofs3status.theTIME >= (ofs3status.idleupdelayParam + idleupdelayOFFSET) and ofs3status.idleupswitchParam:state() == true then

                if sensors.voltage < ofs3status.sensorVoltageMin then ofs3status.sensorVoltageMin = sensors.voltage end
                if sensors.voltage > ofs3status.sensorVoltageMax then ofs3status.sensorVoltageMax = sensors.voltage end

                if sensors.fuel < ofs3status.sensorFuelMin then ofs3status.sensorFuelMin = sensors.fuel end
                if sensors.fuel > ofs3status.sensorFuelMax then ofs3status.sensorFuelMax = sensors.fuel end

                if sensors.rpm < ofs3status.sensorRPMMin then ofs3status.sensorRPMMin = sensors.rpm end
                if sensors.rpm > ofs3status.sensorRPMMax then ofs3status.sensorRPMMax = sensors.rpm end
                if sensors.current < ofs3status.sensorCurrentMin then
                    ofs3status.sensorCurrentMin = sensors.current
                    if ofs3status.sensorCurrentMin == 0 then ofs3status.sensorCurrentMin = 1 end
                end
                if sensors.current > ofs3status.sensorCurrentMax then ofs3status.sensorCurrentMax = sensors.current end
                if sensors.rssi < ofs3status.sensorRSSIMin then ofs3status.sensorRSSIMin = sensors.rssi end
                if sensors.rssi > ofs3status.sensorRSSIMax then ofs3status.sensorRSSIMax = sensors.rssi end
                if sensors.temp_esc < ofs3status.sensorTempESCMin then ofs3status.sensorTempESCMin = sensors.temp_esc end
                if sensors.temp_esc > ofs3status.sensorTempESCMax then ofs3status.sensorTempESCMax = sensors.temp_esc end
                ofs3status.motorWasActive = true
            end

        end

        -- store the last values
        if ofs3status.motorWasActive and ofs3status.idleupswitchParam:state() == false then

            ofs3status.motorWasActive = false

            local maxminFinals = ofs3status.readHistory()

            if ofs3status.sensorCurrentMin == 0 then
                ofs3status.sensorCurrentMinAlt = 1
            else
                ofs3status.sensorCurrentMinAlt = ofs3status.sensorCurrentMin
            end
            if ofs3status.sensorCurrentMax == 0 then
                ofs3status.sensorCurrentMaxAlt = 1
            else
                ofs3status.sensorCurrentMaxAlt = ofs3status.sensorCurrentMax
            end

            local maxminRow = ofs3status.theTIME .. "," .. ofs3status.sensorVoltageMin .. "," .. ofs3status.sensorVoltageMax .. "," .. ofs3status.sensorFuelMin .. "," .. ofs3status.sensorFuelMax .. "," ..
                                  ofs3status.sensorRPMMin .. "," .. ofs3status.sensorRPMMax .. "," .. ofs3status.sensorCurrentMin .. "," .. ofs3status.sensorCurrentMax .. "," .. ofs3status.sensorRSSIMin ..
                                  "," .. ofs3status.sensorRSSIMax .. "," .. ofs3status.sensorTempMCUMin .. "," .. ofs3status.sensorTempMCUMax .. "," .. ofs3status.sensorTempESCMin .. "," ..
                                  ofs3status.sensorTempESCMax

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

            ofs3status.readLOGS = false

        end

    else
        ofs3status.sensorVoltageMax = 0
        ofs3status.sensorVoltageMin = 0
        ofs3status.sensorFuelMin = 0
        ofs3status.sensorFuelMax = 0
        ofs3status.sensorRPMMin = 0
        ofs3status.sensorRPMMax = 0
        ofs3status.sensorCurrentMin = 0
        ofs3status.sensorCurrentMax = 0
        ofs3status.sensorTempESCMin = 0
        ofs3status.sensorTempESCMax = 0
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

function ofs3status.updateFILTERING()
    if ofs3status.filteringParam == 2 then
        -- print("Filtering: medium")
        ofs3status.voltageNoiseQ = 150
        ofs3status.fuelNoiseQ = 150
        ofs3status.rpmNoiseQ = 150
        ofs3status.temp_mcuNoiseQ = 150
        ofs3status.temp_escNoiseQ = 150
        ofs3status.rssiNoiseQ = 150
        ofs3status.currentNoiseQ = 150
    elseif ofs3status.filteringParam == 3 then
        -- print("Filtering: high")
        ofs3status.voltageNoiseQ = 200
        ofs3status.fuelNoiseQ = 200
        ofs3status.rpmNoiseQ = 200
        ofs3status.temp_mcuNoiseQ = 200
        ofs3status.temp_escNoiseQ = 200
        ofs3status.rssiNoiseQ = 200
        ofs3status.currentNoiseQ = 200
    else
        -- print("Filtering: low")
        ofs3status.voltageNoiseQ = 100
        ofs3status.fuelNoiseQ = 100
        ofs3status.rpmNoiseQ = 100
        ofs3status.temp_mcuNoiseQ = 100
        ofs3status.temp_escNoiseQ = 100
        ofs3status.rssiNoiseQ = 100
        ofs3status.currentNoiseQ = 100
    end
end

function ofs3status.kalmanCurrent(new, old)
    if old == nil then old = 0 end
    if new == nil then new = 0 end
    x = old
    local p = 100
    local k = 0
    p = p + 0.05
    k = p / (p + ofs3status.currentNoiseQ)
    x = x + k * (new - x)
    p = (1 - k) * p
    return x
end

function ofs3status.kalmanRSSI(new, old)
    if old == nil then old = 0 end
    if new == nil then new = 0 end
    x = old
    local p = 100
    local k = 0
    p = p + 0.05
    k = p / (p + ofs3status.rssiNoiseQ)
    x = x + k * (new - x)
    p = (1 - k) * p
    return x
end

function ofs3status.kalmanTempMCU(new, old)
    if old == nil then old = 0 end
    if new == nil then new = 0 end
    x = old
    local p = 100
    local k = 0
    p = p + 0.05
    k = p / (p + ofs3status.temp_mcuNoiseQ)
    x = x + k * (new - x)
    p = (1 - k) * p
    return x
end

function ofs3status.kalmanTempESC(new, old)
    if old == nil then old = 0 end
    if new == nil then new = 0 end
    x = old
    local p = 100
    local k = 0
    p = p + 0.05
    k = p / (p + ofs3status.temp_escNoiseQ)
    x = x + k * (new - x)
    p = (1 - k) * p
    return x
end

function ofs3status.kalmanRPM(new, old)
    if old == nil then old = 0 end
    if new == nil then new = 0 end
    x = old
    local p = 100
    local k = 0
    p = p + 0.05
    k = p / (p + ofs3status.rpmNoiseQ)
    x = x + k * (new - x)
    p = (1 - k) * p
    return x
end

function ofs3status.kalmanVoltage(new, old)
    if old == nil then old = 0 end
    if new == nil then new = 0 end
    x = old
    local p = 100
    local k = 0
    p = p + 0.05
    k = p / (p + ofs3status.voltageNoiseQ)
    x = x + k * (new - x)
    p = (1 - k) * p
    return x
end

function ofs3status.sensorMakeNumber(x)
    if x == nil or x == "" then x = 0 end

    x = string.gsub(x, "%D+", "")
    x = tonumber(x)
    if x == nil or x == "" then x = 0 end

    return x
end

function ofs3status.round(number, precision)
    local fmtStr = string.format("%%0.%sf", precision)
    number = string.format(fmtStr, number)
    number = tonumber(number)
    return number
end

function ofs3status.SecondsToClock(seconds)
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

function ofs3status.SecondsToClockAlt(seconds)
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

function ofs3status.SecondsFromTime(seconds)
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

function ofs3status.spairs(t, order)
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

function ofs3status.explode(inputstr, sep)
    if sep == nil then sep = "%s" end
    local t = {}
    for str in string.gmatch(inputstr, "([^" .. sep .. "]+)") do table.insert(t, str) end
    return t
end

function ofs3status.ReadLine(f, line)
    local i = 1 -- line counter
    for l in f:lines() do -- lines iterator, "l" returns the line
        if i == line then return l end -- we found this line, return it
        i = i + 1 -- counting lines
    end
    return "" -- Doesn't have that line
end

function ofs3status.readHistory()

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

function ofs3status.read()
    ofs3status.govmodeParam = storage.read("mem1")
    ofs3status.btypeParam = storage.read("mem2")
    ofs3status.lowfuelParam = storage.read("mem3")
    ofs3status.alertintParam = storage.read("mem4")
    ofs3status.alrthptParam = storage.read("mem5")
    ofs3status.maxminParam = storage.read("mem6")
    ofs3status.titleParam = storage.read("mem7")
    ofs3status.cellsParam = storage.read("mem8")
    ofs3status.announcementVoltageSwitchParam = storage.read("mem9")
    ofs3status.govmodeParam = storage.read("mem10")
    ofs3status.rpmAlertsParam = storage.read("mem11")
    ofs3status.rpmAlertsPercentageParam = storage.read("mem12")
    ofs3status.adjFunctionParam = storage.read("mem13") -- spare
    ofs3status.announcementRPMSwitchParam = storage.read("mem14")
    ofs3status.announcementCurrentSwitchParam = storage.read("mem15")
    ofs3status.announcementFuelSwitchParam = storage.read("mem16")
    ofs3status.announcementLQSwitchParam = storage.read("mem17")
    ofs3status.announcementESCSwitchParam = storage.read("mem18")
    ofs3status.announcementMCUSwitchParam = storage.read("mem19")
    ofs3status.announcementTimerSwitchParam = storage.read("mem20")
    ofs3status.filteringParam = storage.read("mem21")
    ofs3status.sagParam = storage.read("mem22")
    ofs3status.lowvoltagsenseParam = storage.read("mem23")
    ofs3status.announcementIntervalParam = storage.read("mem24")
    ofs3status.lowVoltageGovernorParam = storage.read("mem25")
    ofs3status.lowvoltagStickParam = storage.read("mem26")
    ofs3status.quadBoxParam = storage.read("mem27") 
    ofs3status.lowvoltagStickCutoffParam = storage.read("mem28")
    ofs3status.governorUNKNOWNParam = storage.read("mem29")
    ofs3status.governorDISARMEDParam = storage.read("mem30")
    ofs3status.governorDISABLEDParam = storage.read("mem31")
    ofs3status.governorBAILOUTParam = storage.read("mem32")
    ofs3status.governorAUTOROTParam = storage.read("mem33")
    ofs3status.governorLOSTHSParam = storage.read("mem34")
    ofs3status.governorTHROFFParam = storage.read("mem35")
    ofs3status.governorACTIVEParam = storage.read("mem36")
    ofs3status.governorRECOVERYParam = storage.read("mem37")
    ofs3status.governorSPOOLUPParam = storage.read("mem38")
    ofs3status.governorIDLEParam = storage.read("mem39")
    ofs3status.governorOFFParam = storage.read("mem40")
    ofs3status.alertonParam = storage.read("mem41")
    ofs3status.calcfuelParam = storage.read("mem42")
    ofs3status.tempconvertParamESC = storage.read("mem43")
    ofs3status.tempconvertParamMCU = storage.read("mem44")
    ofs3status.idleupswitchParam = storage.read("mem45")
    armswitchParam = storage.read("mem46")
    ofs3status.idleupdelayParam = storage.read("mem47")
    ofs3status.switchIdlelowParam = storage.read("mem48")
    ofs3status.switchIdlemediumParam = storage.read("mem49")
    ofs3status.switchIdlehighParam = storage.read("mem50")
    ofs3status.switchrateslowParam = storage.read("mem51")
    ofs3status.switchratesmediumParam = storage.read("mem52")
    ofs3status.switchrateshighParam = storage.read("mem53")
    ofs3status.switchrescueonParam = storage.read("mem54")
    ofs3status.switchrescueoffParam = storage.read("mem55")
    ofs3status.switchbblonParam = storage.read("mem56")
    ofs3status.switchbbloffParam = storage.read("mem57")
    ofs3status.layoutBox1Param = storage.read("mem58")
    ofs3status.layoutBox2Param = storage.read("mem59")
    ofs3status.layoutBox3Param = storage.read("mem60")
    ofs3status.layoutBox4Param = storage.read("mem61")
    ofs3status.layoutBox5Param = storage.read("mem62")
    ofs3status.layoutBox6Param = storage.read("mem63")
    ofs3status.timeralarmVibrateParam = storage.read("mem64")
    ofs3status.timeralarmParam = storage.read("mem65")
    ofs3status.statusColorParam = storage.read("mem66")

    if ofs3status.layoutBox1Param == nil then ofs3status.layoutBox1Param = 11 end
    if ofs3status.layoutBox2Param == nil then ofs3status.layoutBox2Param = 2 end
    if ofs3status.layoutBox3Param == nil then ofs3status.layoutBox3Param = 3 end
    if ofs3status.layoutBox4Param == nil then ofs3status.layoutBox4Param = 12 end
    if ofs3status.layoutBox5Param == nil then ofs3status.layoutBox5Param = 4 end
    if ofs3status.layoutBox6Param == nil then ofs3status.layoutBox6Param = 5 end

    ofs3status.resetALL()
    ofs3status.updateFILTERING()
end

function ofs3status.write()
    storage.write("mem1", ofs3status.govmodeParam)
    storage.write("mem2", ofs3status.btypeParam)
    storage.write("mem3", ofs3status.lowfuelParam)
    storage.write("mem4", ofs3status.alertintParam)
    storage.write("mem5", ofs3status.alrthptParam)
    storage.write("mem6", ofs3status.maxminParam)
    storage.write("mem7", ofs3status.titleParam)
    storage.write("mem8", ofs3status.cellsParam)
    storage.write("mem9", ofs3status.announcementVoltageSwitchParam)
    storage.write("mem10", ofs3status.govmodeParam)
    storage.write("mem11", ofs3status.rpmAlertsParam)
    storage.write("mem12", ofs3status.rpmAlertsPercentageParam)
    storage.write("mem13", ofs3status.adjFunctionParam)  -- spare
    storage.write("mem14", ofs3status.announcementRPMSwitchParam)
    storage.write("mem15", ofs3status.announcementCurrentSwitchParam)
    storage.write("mem16", ofs3status.announcementFuelSwitchParam)
    storage.write("mem17", ofs3status.announcementLQSwitchParam)
    storage.write("mem18", ofs3status.announcementESCSwitchParam)
    storage.write("mem19", ofs3status.announcementMCUSwitchParam)
    storage.write("mem20", ofs3status.announcementTimerSwitchParam)
    storage.write("mem21", ofs3status.filteringParam)
    storage.write("mem22", ofs3status.sagParam)
    storage.write("mem23", ofs3status.lowvoltagsenseParam)
    storage.write("mem24", ofs3status.announcementIntervalParam)
    storage.write("mem25", ofs3status.lowVoltageGovernorParam)
    storage.write("mem26", ofs3status.lowvoltagStickParam)
    storage.write("mem27", ofs3status.quadBoxParam) 
    storage.write("mem28", ofs3status.lowvoltagStickCutoffParam)
    storage.write("mem29", ofs3status.governorUNKNOWNParam)
    storage.write("mem30", ofs3status.governorDISARMEDParam)
    storage.write("mem31", ofs3status.governorDISABLEDParam)
    storage.write("mem32", ofs3status.governorBAILOUTParam)
    storage.write("mem33", ofs3status.governorAUTOROTParam)
    storage.write("mem34", ofs3status.governorLOSTHSParam)
    storage.write("mem35", ofs3status.governorTHROFFParam)
    storage.write("mem36", ofs3status.governorACTIVEParam)
    storage.write("mem37", ofs3status.governorRECOVERYParam)
    storage.write("mem38", ofs3status.governorSPOOLUPParam)
    storage.write("mem39", ofs3status.governorIDLEParam)
    storage.write("mem40", ofs3status.governorOFFParam)
    storage.write("mem41", ofs3status.alertonParam)
    storage.write("mem42", ofs3status.calcfuelParam)
    storage.write("mem43", ofs3status.tempconvertParamESC)
    storage.write("mem44", ofs3status.tempconvertParamMCU)
    storage.write("mem45", ofs3status.idleupswitchParam)
    storage.write("mem46", armswitchParam)
    storage.write("mem47", ofs3status.idleupdelayParam)
    storage.write("mem48", ofs3status.switchIdlelowParam)
    storage.write("mem49", ofs3status.switchIdlemediumParam)
    storage.write("mem50", ofs3status.switchIdlehighParam)
    storage.write("mem51", ofs3status.switchrateslowParam)
    storage.write("mem52", ofs3status.switchratesmediumParam)
    storage.write("mem53", ofs3status.switchrateshighParam)
    storage.write("mem54", ofs3status.switchrescueonParam)
    storage.write("mem55", ofs3status.switchrescueoffParam)
    storage.write("mem56", ofs3status.switchbblonParam)
    storage.write("mem57", ofs3status.switchbbloffParam)
    storage.write("mem58", ofs3status.layoutBox1Param)
    storage.write("mem59", ofs3status.layoutBox2Param)
    storage.write("mem60", ofs3status.layoutBox3Param)
    storage.write("mem61", ofs3status.layoutBox4Param)
    storage.write("mem62", ofs3status.layoutBox5Param)
    storage.write("mem63", ofs3status.layoutBox6Param)
    storage.write("mem64", ofs3status.timeralarmVibrateParam)
    storage.write("mem65", ofs3status.timeralarmParam)
    storage.write("mem66", ofs3status.statusColorParam)

    ofs3status.updateFILTERING()
end

function ofs3status.playCurrent(widget)
    if ofs3status.announcementCurrentSwitchParam ~= nil then
        if ofs3status.announcementCurrentSwitchParam:state() then
            ofs3status.currenttime.currentannouncementTimer = true
            currentDoneFirst = false
        else
            ofs3status.currenttime.currentannouncementTimer = false
            currentDoneFirst = true
        end

        if ofs3status.isInConfiguration == false then
            if ofs3status.sensors.current ~= nil then
                if ofs3status.currenttime.currentannouncementTimer == true then
                    -- start timer
                    if ofs3status.currenttime.currentannouncementTimerStart == nil and currentDoneFirst == false then
                        ofs3status.currenttime.currentannouncementTimerStart = os.time()
                        ofs3status.currenttime.currentaudioannouncementCounter = os.clock()
                        -- print ("Play Current Alert (first)")
                        system.playNumber(ofs3status.sensors.current / 10, UNIT_AMPERE, 2)
                        currentDoneFirst = true
                    end
                else
                    ofs3status.currenttime.currentannouncementTimerStart = nil
                end

                if ofs3status.currenttime.currentannouncementTimerStart ~= nil then
                    if currentDoneFirst == false then
                        if ((tonumber(os.clock()) - tonumber(ofs3status.currenttime.currentaudioannouncementCounter)) >= ofs3status.announcementIntervalParam) then
                            -- print ("Play Current Alert (repeat)")
                            ofs3status.currenttime.currentaudioannouncementCounter = os.clock()
                            system.playNumber(ofs3status.sensors.current / 10, UNIT_AMPERE, 2)
                        end
                    end
                else
                    -- stop timer
                    ofs3status.currenttime.currentannouncementTimerStart = nil
                end
            end
        end
    end
end

function ofs3status.playLQ(widget)
    if ofs3status.announcementLQSwitchParam ~= nil then
        if ofs3status.announcementLQSwitchParam:state() then
            ofs3status.lqtime.lqannouncementTimer = true
            lqDoneFirst = false
        else
            ofs3status.lqtime.lqannouncementTimer = false
            lqDoneFirst = true
        end

        if ofs3status.isInConfiguration == false then
            if ofs3status.sensors.rssi ~= nil then
                if ofs3status.lqtime.lqannouncementTimer == true then
                    -- start timer
                    if ofs3status.lqtime.lqannouncementTimerStart == nil and lqDoneFirst == false then
                        ofs3status.lqtime.lqannouncementTimerStart = os.time()
                        ofs3status.lqtime.lqaudioannouncementCounter = os.clock()
                        -- print ("Play LQ Alert (first)")
                        system.playFile("sounds/alerts/lq.wav")
                        system.playNumber(ofs3status.sensors.rssi, UNIT_PERCENT, 2)
                        lqDoneFirst = true
                    end
                else
                    ofs3status.lqtime.lqannouncementTimerStart = nil
                end

                if ofs3status.lqtime.lqannouncementTimerStart ~= nil then
                    if lqDoneFirst == false then
                        if ((tonumber(os.clock()) - tonumber(ofs3status.lqtime.lqaudioannouncementCounter)) >= ofs3status.announcementIntervalParam) then
                            ofs3status.lqtime.lqaudioannouncementCounter = os.clock()
                            -- print ("Play LQ Alert (repeat)")
                            system.playFile("sounds/alerts/lq.wav")
                            system.playNumber(ofs3status.sensors.rssi, UNIT_PERCENT, 2)
                        end
                    end
                else
                    -- stop timer
                    ofs3status.lqtime.lqannouncementTimerStart = nil
                end
            end
        end
    end
end

function ofs3status.playMCU(widget)
    if ofs3status.announcementMCUSwitchParam ~= nil then
        if ofs3status.announcementMCUSwitchParam:state() then
            ofs3status.mcutime.mcuannouncementTimer = true
            mcuDoneFirst = false
        else
            ofs3status.mcutime.mcuannouncementTimer = false
            mcuDoneFirst = true
        end

        if ofs3status.isInConfiguration == false then
            if ofs3status.sensors.temp_mcu ~= nil then
                if ofs3status.mcutime.mcuannouncementTimer == true then
                    -- start timer
                    if ofs3status.mcutime.mcuannouncementTimerStart == nil and mcuDoneFirst == false then
                        ofs3status.mcutime.mcuannouncementTimerStart = os.time()
                        ofs3status.mcutime.mcuaudioannouncementCounter = os.clock()
                        -- print ("Playing MCU (first)")
                        system.playFile("sounds/alerts/mcu.wav")
                        system.playNumber(ofs3status.sensors.temp_mcu / 100, UNIT_DEGREE, 2)
                        mcuDoneFirst = true
                    end
                else
                    ofs3status.mcutime.mcuannouncementTimerStart = nil
                end

                if ofs3status.mcutime.mcuannouncementTimerStart ~= nil then
                    if mcuDoneFirst == false then
                        if ((tonumber(os.clock()) - tonumber(ofs3status.mcutime.mcuaudioannouncementCounter)) >= ofs3status.announcementIntervalParam) then
                            ofs3status.mcutime.mcuaudioannouncementCounter = os.clock()
                            -- print ("Playing MCU (repeat)")
                            system.playFile("sounds/alerts/mcu.wav")
                            system.playNumber(ofs3status.sensors.temp_mcu / 100, UNIT_DEGREE, 2)
                        end
                    end
                else
                    -- stop timer
                    ofs3status.mcutime.mcuannouncementTimerStart = nil
                end
            end
        end
    end
end

function ofs3status.playESC(widget)
    if ofs3status.announcementESCSwitchParam ~= nil then
        if ofs3status.announcementESCSwitchParam:state() then
            ofs3status.esctime.escannouncementTimer = true
            escDoneFirst = false
        else
            ofs3status.esctime.escannouncementTimer = false
            escDoneFirst = true
        end

        if ofs3status.isInConfiguration == false then
            if ofs3status.sensors.temp_esc ~= nil then
                if ofs3status.esctime.escannouncementTimer == true then
                    -- start timer
                    if ofs3status.esctime.escannouncementTimerStart == nil and escDoneFirst == false then
                        ofs3status.esctime.escannouncementTimerStart = os.time()
                        ofs3status.esctime.escaudioannouncementCounter = os.clock()
                        -- print ("Playing ESC (first)")
                        system.playFile("sounds/alerts/esc.wav")
                        system.playNumber(ofs3status.sensors.temp_esc / 100, UNIT_DEGREE, 2)
                        escDoneFirst = true
                    end
                else
                    ofs3status.esctime.escannouncementTimerStart = nil
                end

                if ofs3status.esctime.escannouncementTimerStart ~= nil then
                    if escDoneFirst == false then
                        if ((tonumber(os.clock()) - tonumber(ofs3status.esctime.escaudioannouncementCounter)) >= ofs3status.announcementIntervalParam) then
                            ofs3status.esctime.escaudioannouncementCounter = os.clock()
                            -- print ("Playing ESC (repeat)")
                            system.playFile("sounds/alerts/esc.wav")
                            system.playNumber(ofs3status.sensors.temp_esc / 100, UNIT_DEGREE, 2)
                        end
                    end
                else
                    -- stop timer
                    ofs3status.esctime.escannouncementTimerStart = nil
                end
            end
        end
    end
end

function ofs3status.playTIMERALARM(widget)
    if ofs3status.theTIME ~= nil and ofs3status.timeralarmParam ~= nil and ofs3status.timeralarmParam ~= 0 then

        -- reset timer Delay
        if ofs3status.theTIME > ofs3status.timeralarmParam + 2 then ofs3status.timerAlarmPlay = true end
        -- trigger first timer
        if ofs3status.timerAlarmPlay == true then
            if ofs3status.theTIME >= ofs3status.timeralarmParam and ofs3status.theTIME <= ofs3status.timeralarmParam + 1 then

                system.playFile("sounds/alerts/beep.wav")

                hours = string.format("%02.f", math.floor(ofs3status.theTIME / 3600))
                mins = string.format("%02.f", math.floor(ofs3status.theTIME / 60 - (hours * 60)))
                secs = string.format("%02.f", math.floor(ofs3status.theTIME - hours * 3600 - mins * 60))

                system.playFile("sounds/alerts/timer.wav")
                if mins ~= "00" then system.playNumber(mins, UNIT_MINUTE, 2) end
                system.playNumber(secs, UNIT_SECOND, 2)

                if ofs3status.timeralarmVibrateParam == true then system.playHaptic("- - -") end

                ofs3status.timerAlarmPlay = false
            end
        end

    end
end

function ofs3status.playTIMER(widget)
    if ofs3status.announcementTimerSwitchParam ~= nil then

        if ofs3status.announcementTimerSwitchParam:state() then
            ofs3status.timetime.timerannouncementTimer = true
            timerDoneFirst = false
        else
            ofs3status.timetime.timerannouncementTimer = false
            timerDoneFirst = true
        end

        if ofs3status.isInConfiguration == false then

            if ofs3status.theTIME == nil then
                alertTIME = 0
            else
                alertTIME = ofs3status.theTIME
            end

            if alertTIME ~= nil then

                hours = string.format("%02.f", math.floor(alertTIME / 3600))
                mins = string.format("%02.f", math.floor(alertTIME / 60 - (hours * 60)))
                secs = string.format("%02.f", math.floor(alertTIME - hours * 3600 - mins * 60))

                if ofs3status.timetime.timerannouncementTimer == true then
                    -- start timer
                    if ofs3status.timetime.timerannouncementTimerStart == nil and timerDoneFirst == false then
                        ofs3status.timetime.timerannouncementTimerStart = os.time()
                        ofs3status.timetime.timeraudioannouncementCounter = os.clock()
                        -- print ("Playing TIMER (first)" .. alertTIME)

                        if mins ~= "00" then system.playNumber(mins, UNIT_MINUTE, 2) end
                        system.playNumber(secs, UNIT_SECOND, 2)

                        timerDoneFirst = true
                    end
                else
                    ofs3status.timetime.timerannouncementTimerStart = nil
                end

                if ofs3status.timetime.timerannouncementTimerStart ~= nil then
                    if timerDoneFirst == false then
                        if ((tonumber(os.clock()) - tonumber(ofs3status.timetime.timeraudioannouncementCounter)) >= ofs3status.announcementIntervalParam) then
                            ofs3status.timetime.timeraudioannouncementCounter = os.clock()
                            -- print ("Playing TIMER (repeat)" .. alertTIME)
                            if mins ~= "00" then system.playNumber(mins, UNIT_MINUTE, 2) end
                            system.playNumber(secs, UNIT_SECOND, 2)
                        end
                    end
                else
                    -- stop timer
                    ofs3status.timetime.timerannouncementTimerStart = nil
                end
            end
        end
    end
end

function ofs3status.playFuel(widget)
    if ofs3status.announcementFuelSwitchParam ~= nil then
        if ofs3status.announcementFuelSwitchParam:state() then
            ofs3status.fueltime.fuelannouncementTimer = true
            fuelDoneFirst = false
        else
            ofs3status.fueltime.fuelannouncementTimer = false
            fuelDoneFirst = true
        end

        if ofs3status.isInConfiguration == false then
            if ofs3status.sensors.fuel ~= nil then
                if ofs3status.fueltime.fuelannouncementTimer == true then
                    -- start timer
                    if ofs3status.fueltime.fuelannouncementTimerStart == nil and fuelDoneFirst == false then
                        ofs3status.fueltime.fuelannouncementTimerStart = os.time()
                        ofs3status.fueltime.fuelaudioannouncementCounter = os.clock()
                        -- print("Play fuel alert (first)")
                        system.playFile("sounds/alerts/fuel.wav")
                        system.playNumber(ofs3status.sensors.fuel, UNIT_PERCENT, 2)
                        fuelDoneFirst = true
                    end
                else
                    ofs3status.fueltime.fuelannouncementTimerStart = nil
                end

                if ofs3status.fueltime.fuelannouncementTimerStart ~= nil then
                    if fuelDoneFirst == false then
                        if ((tonumber(os.clock()) - tonumber(ofs3status.fueltime.fuelaudioannouncementCounter)) >= ofs3status.announcementIntervalParam) then
                            ofs3status.fueltime.fuelaudioannouncementCounter = os.clock()
                            -- print("Play fuel alert (repeat)")
                            system.playFile("sounds/alerts/fuel.wav")
                            system.playNumber(ofs3status.sensors.fuel, UNIT_PERCENT, 2)

                        end
                    end
                else
                    -- stop timer
                    ofs3status.fueltime.fuelannouncementTimerStart = nil
                end
            end
        end
    end
end

function ofs3status.playRPM(widget)
    if ofs3status.announcementRPMSwitchParam ~= nil then
        if ofs3status.announcementRPMSwitchParam:state() then
            ofs3status.rpmtime.announcementTimer = true
            rpmDoneFirst = false
        else
            ofs3status.rpmtime.announcementTimer = false
            rpmDoneFirst = true
        end

        if ofs3status.isInConfiguration == false then
            if ofs3status.sensors.rpm ~= nil then
                if ofs3status.rpmtime.announcementTimer == true then
                    -- start timer
                    if ofs3status.rpmtime.announcementTimerStart == nil and rpmDoneFirst == false then
                        ofs3status.rpmtime.announcementTimerStart = os.time()
                        ofs3status.rpmtime.audioannouncementCounter = os.clock()
                        -- print("Play rpm alert (first)")
                        system.playNumber(ofs3status.sensors.rpm, UNIT_RPM, 2)
                        rpmDoneFirst = true
                    end
                else
                    ofs3status.rpmtime.announcementTimerStart = nil
                end

                if ofs3status.rpmtime.announcementTimerStart ~= nil then
                    if rpmDoneFirst == false then
                        if ((tonumber(os.clock()) - tonumber(ofs3status.rpmtime.audioannouncementCounter)) >= ofs3status.announcementIntervalParam) then
                            -- print("Play rpm alert (repeat)")
                            ofs3status.rpmtime.audioannouncementCounter = os.clock()
                            system.playNumber(ofs3status.sensors.rpm, UNIT_RPM, 2)
                        end
                    end
                else
                    -- stop timer
                    ofs3status.rpmtime.announcementTimerStart = nil
                end
            end
        end
    end
end

function ofs3status.playVoltage(widget)
    if ofs3status.announcementVoltageSwitchParam ~= nil then
        if ofs3status.announcementVoltageSwitchParam:state() then
            ofs3status.lvannouncementTimer = true
            voltageDoneFirst = false
        else
            ofs3status.lvannouncementTimer = false
            voltageDoneFirst = true
        end

        if ofs3status.isInConfiguration == false then
            if ofs3status.sensors.voltage ~= nil then
                if ofs3status.lvannouncementTimer == true then
                    -- start timer
                    if ofs3status.lvannouncementTimerStart == nil and voltageDoneFirst == false then
                        ofs3status.lvannouncementTimerStart = os.time()
                        ofs3status.lvaudioannouncementCounter = os.clock()
                        -- print("Play voltage alert (first)")
                        -- system.playFile("sounds/alerts/voltage.wav")						
                        system.playNumber(ofs3status.sensors.voltage / 100, 2, 2)
                        voltageDoneFirst = true
                    end
                else
                    ofs3status.lvannouncementTimerStart = nil
                end

                if ofs3status.lvannouncementTimerStart ~= nil then
                    if voltageDoneFirst == false then
                        if ofs3status.lvaudioannouncementCounter ~= nil and ofs3status.announcementIntervalParam ~= nil then
                            if ((tonumber(os.clock()) - tonumber(ofs3status.lvaudioannouncementCounter)) >= ofs3status.announcementIntervalParam) then
                                ofs3status.lvaudioannouncementCounter = os.clock()
                                -- print("Play voltage alert (repeat)")
                                -- system.playFile("sounds/alerts/voltage.wav")								
                                system.playNumber(ofs3status.sensors.voltage / 100, 2, 2)
                            end
                        end
                    end
                else
                    -- stop timer
                    ofs3status.lvannouncementTimerStart = nil
                end
            end
        end
    end
end

function ofs3status.event(widget, category, value, x, y)

    -- print("Event received:", category, value, x, y)

    if closingLOGS then
        if category == EVT_TOUCH and (value == 16640 or value == 16641) then
            closingLOGS = false
            return true
        end

    end

    if ofs3status.showLOGS then
        if value == 35 then ofs3status.showLOGS = false end

        if category == EVT_TOUCH and (value == 16640 or value == 16641) then
            if (x >= (ofs3status.closeButtonX) and (x <= (ofs3status.closeButtonX + ofs3status.closeButtonW))) and
                (y >= (ofs3status.closeButtonY) and (y <= (ofs3status.closeButtonY + ofs3status.closeButtonH))) then
                ofs3status.showLOGS = false
                closingLOGS = true
            end
            return true
        else
            if category == EVT_TOUCH then return true end
        end

    end

end

function ofs3status.playGovernor()
    if ofs3status.governorAlertsParam == true then
        if ofs3status.playGovernorLastState == nil then ofs3status.playGovernorLastState = ofs3status.sensors.govmode end

        if ofs3status.sensors.govmode ~= ofs3status.playGovernorLastState then
            ofs3status.playGovernorCount = 0
            ofs3status.playGovernorLastState = ofs3status.sensors.govmode
        end

        if ofs3status.playGovernorCount == 0 then
            -- print("Governor: " .. ofs3status.sensors.govmode)
            ofs3status.playGovernorCount = 1

            if ofs3status.sensors.govmode == "UNKNOWN" and ofs3status.governorUNKNOWNParam == true then
                if ofs3status.govmodeParam == 0 then system.playFile("sounds/events/governor.wav") end
                system.playFile("sounds/events/unknown.wav")
            end
            if ofs3status.sensors.govmode == "DISARMED" and ofs3status.governorDISARMEDParam == true then
                if ofs3status.govmodeParam == 0 then system.playFile("sounds/events/governor.wav") end
                system.playFile("sounds/events/disarmed.wav")
            end
            if ofs3status.sensors.govmode == "DISABLED" and ofs3status.governorDISABLEDParam == true then
                if ofs3status.govmodeParam == 0 then system.playFile("sounds/events/governor.wav") end
                system.playFile("sounds/events/disabled.wav")
            end
            if ofs3status.sensors.govmode == "BAILOUT" and ofs3status.governorBAILOUTParam == true then
                if ofs3status.govmodeParam == 0 then system.playFile("sounds/events/governor.wav") end
                system.playFile("sounds/events/bailout.wav")
            end
            if ofs3status.sensors.govmode == "AUTOROT" and ofs3status.governorAUTOROTParam == true then
                if ofs3status.govmodeParam == 0 then system.playFile("sounds/events/governor.wav") end
                system.playFile("sounds/events/autorot.wav")
            end
            if ofs3status.sensors.govmode == "LOST-HS" and ofs3status.governorLOSTHSParam == true then
                if ofs3status.govmodeParam == 0 then system.playFile("sounds/events/governor.wav") end
                system.playFile("sounds/events/lost-hs.wav")
            end
            if ofs3status.sensors.govmode == "THR-OFF" and ofs3status.governorTHROFFParam == true then
                if ofs3status.govmodeParam == 0 then system.playFile("sounds/events/governor.wav") end
                system.playFile("sounds/events/thr-off.wav")
            end
            if ofs3status.sensors.govmode == "ACTIVE" and ofs3status.governorACTIVEParam == true then
                if ofs3status.govmodeParam == 0 then system.playFile("sounds/events/governor.wav") end
                system.playFile("sounds/events/active.wav")
            end
            if ofs3status.sensors.govmode == "RECOVERY" and ofs3status.governorRECOVERYParam == true then
                if ofs3status.govmodeParam == 0 then system.playFile("sounds/events/governor.wav") end
                system.playFile("sounds/events/recovery.wav")
            end
            if ofs3status.sensors.govmode == "SPOOLUP" and ofs3status.governorSPOOLUPParam == true then
                if ofs3status.govmodeParam == 0 then system.playFile("sounds/events/governor.wav") end
                system.playFile("sounds/events/spoolup.wav")
            end
            if ofs3status.sensors.govmode == "IDLE" and ofs3status.governorIDLEParam == true then
                if ofs3status.govmodeParam == 0 then system.playFile("sounds/events/governor.wav") end
                system.playFile("sounds/events/idle.wav")
            end
            if ofs3status.sensors.govmode == "OFF" and ofs3status.governorOFFParam == true then
                if ofs3status.govmodeParam == 0 then system.playFile("sounds/events/governor.wav") end
                system.playFile("sounds/events/off.wav")
            end

        end

    end
end

function ofs3status.playRPMDiff()
    if ofs3status.rpmAlertsParam == true then

        if ofs3status.sensors.govmode == "ACTIVE" or ofs3status.sensors.govmode == "LOST-HS" or ofs3status.sensors.govmode == "BAILOUT" or ofs3status.sensors.govmode == "RECOVERY" then

            if ofs3status.playrpmdiff.playRPMDiffLastState == nil then ofs3status.playrpmdiff.playRPMDiffLastState = ofs3status.sensors.rpm end

            -- we take a reading every 5 second
            if (tonumber(os.clock()) - tonumber(ofs3status.playrpmdiff.playRPMDiffCounter)) >= 5 then
                ofs3status.playrpmdiff.playRPMDiffCounter = os.clock()
                ofs3status.playrpmdiff.playRPMDiffLastState = ofs3status.sensors.rpm
            end

            -- check if current state withing % of last state
            local percentageDiff = 0
            if ofs3status.sensors.rpm > ofs3status.playrpmdiff.playRPMDiffLastState then
                percentageDiff = math.abs(100 - (ofs3status.sensors.rpm / ofs3status.playrpmdiff.playRPMDiffLastState * 100))
            elseif ofs3status.playrpmdiff.playRPMDiffLastState < ofs3status.sensors.rpm then
                percentage = math.abs(100 - (ofs3status.playrpmdiff.playRPMDiffLastState / ofs3status.sensors.rpm * 100))
            else
                percentageDiff = 0
            end

            if percentageDiff > ofs3status.rpmAlertsPercentageParam / 10 then ofs3status.playrpmdiff.playRPMDiffCount = 0 end

            if ofs3status.playrpmdiff.playRPMDiffCount == 0 then
                -- print("RPM Difference: " .. percentageDiff)
                ofs3status.playrpmdiff.playRPMDiffCount = 1
                system.playNumber(ofs3status.sensors.rpm, UNIT_RPM, 2)
            end
        end
    end
end


-- MAIN WAKEUP FUNCTION. THIS SIMPLY FARMS OUT AT DIFFERING SCHEDULES TO SUB FUNCTIONS
function ofs3status.wakeup(widget)

    local schedulerUI
    if lcd.isVisible() then
        schedulerUI = 0.25
    else
        schedulerUI = 1
    end

    -- keep cpu load down by running UI at reduced interval
    local now = os.clock()
    if (now - ofs3status.wakeupSchedulerUI) >= schedulerUI then
        ofs3status.wakeupSchedulerUI = now
        ofs3status.wakeupUI()
    end

end

function ofs3status.wakeupUI(widget)
    ofs3status.refresh = false

    ofs3status.linkUP = ofs3status.getRSSI()
    ofs3status.sensors = ofs3status.getSensors()

    if ofs3status.refresh == true then
        ofs3status.sensorsMAXMIN(ofs3status.sensors)
        lcd.invalidate()
    end

    if ofs3status.linkUP == 0 then ofs3status.linkUPTime = os.clock() end

    if ofs3status.linkUP ~= 0 then

        if ((tonumber(os.clock()) - tonumber(ofs3status.linkUPTime)) >= 5) then
            -- voltage alerts
            ofs3status.playVoltage(widget)
            -- governor callouts
            ofs3status.playGovernor(widget)
            -- rpm diff
            ofs3status.playRPMDiff(widget)
            -- rpm
            ofs3status.playRPM(widget)
            -- current
            ofs3status.playCurrent(widget)
            -- fuel
            ofs3status.playFuel(widget)
            -- lq
            ofs3status.playLQ(widget)
            -- esc
            ofs3status.playESC(widget)
            -- mcu
            ofs3status.playMCU(widget)
            -- timer
            ofs3status.playTIMER(widget)
            -- timer alarm
            ofs3status.playTIMERALARM(widget)


            if ((tonumber(os.clock()) - tonumber(ofs3status.linkUPTime)) >= 10) then

                -- IDLE
                if ofs3status.switchIdlelowParam ~= nil and ofs3status.switchIdlelowParam:state() == true then
                    if ofs3status.switchstatus.idlelow == nil or ofs3status.switchstatus.idlelow == false then
                        system.playFile("sounds/switches/idle-l.wav")
                        ofs3status.switchstatus.idlelow = true
                        ofs3status.switchstatus.idlemedium = false
                        ofs3status.switchstatus.idlehigh = false
                    end
                else
                    ofs3status.switchstatus.idlelow = false
                end
                if ofs3status.switchIdlemediumParam ~= nil and ofs3status.switchIdlemediumParam:state() == true then
                    if ofs3status.switchstatus.idlemedium == nil or ofs3status.switchstatus.idlemedium == false then
                        system.playFile("sounds/switches/idle-m.wav")
                        ofs3status.switchstatus.idlelow = false
                        ofs3status.switchstatus.idlemedium = true
                        ofs3status.switchstatus.idlehigh = false
                    end
                else
                    ofs3status.switchstatus.idlemedium = false
                end
                if ofs3status.switchIdlehighParam ~= nil and ofs3status.switchIdlehighParam:state() == true then
                    if ofs3status.switchstatus.idlehigh == nil or ofs3status.switchstatus.idlehigh == false then
                        system.playFile("sounds/switches/idle-h.wav")
                        ofs3status.switchstatus.idlelow = false
                        ofs3status.switchstatus.idlemedium = false
                        ofs3status.switchstatus.idlehigh = true
                    end
                else
                    ofs3status.switchstatus.idlehigh = false
                end

                -- RATES
                if ofs3status.switchrateslowParam ~= nil and ofs3status.switchrateslowParam:state() == true then
                    if ofs3status.switchstatus.rateslow == nil or ofs3status.switchstatus.rateslow == false then
                        system.playFile("sounds/switches/rates-l.wav")
                        ofs3status.switchstatus.rateslow = true
                        ofs3status.switchstatus.ratesmedium = false
                        ofs3status.switchstatus.rateshigh = false
                    end
                else
                    ofs3status.switchstatus.rateslow = false
                end
                if ofs3status.switchratesmediumParam ~= nil and ofs3status.switchratesmediumParam:state() == true then
                    if ofs3status.switchstatus.ratesmedium == nil or ofs3status.switchstatus.ratesmedium == false then
                        system.playFile("sounds/switches/rates-m.wav")
                        ofs3status.switchstatus.rateslow = false
                        ofs3status.switchstatus.ratesmedium = true
                        ofs3status.switchstatus.rateshigh = false
                    end
                else
                    ofs3status.switchstatus.ratesmedium = false
                end
                if ofs3status.switchrateshighParam ~= nil and ofs3status.switchrateshighParam:state() == true then
                    if ofs3status.switchstatus.rateshigh == nil or ofs3status.switchstatus.rateshigh == false then
                        system.playFile("sounds/switches/rates-h.wav")
                        ofs3status.switchstatus.rateslow = false
                        ofs3status.switchstatus.ratesmedium = false
                        ofs3status.switchstatus.rateshigh = true
                    end
                else
                    ofs3status.switchstatus.rateshigh = false
                end

                -- RESCUE
                if ofs3status.switchrescueonParam ~= nil and ofs3status.switchrescueonParam:state() == true then
                    if ofs3status.switchstatus.rescueon == nil or ofs3status.switchstatus.rescueon == false then
                        system.playFile("sounds/switches/rescue-on.wav")
                        ofs3status.switchstatus.rescueon = true
                        ofs3status.switchstatus.rescueoff = false
                    end
                else
                    ofs3status.switchstatus.rescueon = false
                end
                if ofs3status.switchrescueoffParam ~= nil and ofs3status.switchrescueoffParam:state() == true then
                    if ofs3status.switchstatus.rescueoff == nil or ofs3status.switchstatus.rescueoff == false then
                        system.playFile("sounds/switches/rescue-off.wav")
                        ofs3status.switchstatus.rescueon = false
                        ofs3status.switchstatus.rescueoff = true
                    end
                else
                    ofs3status.switchstatus.rescueoff = false
                end

                -- BBL
                if ofs3status.switchbblonParam ~= nil and ofs3status.switchbblonParam:state() == true then
                    if ofs3status.switchstatus.bblon == nil or ofs3status.switchstatus.bblon == false then
                        system.playFile("sounds/switches/bbl-on.wav")
                        ofs3status.switchstatus.bblon = true
                        ofs3status.switchstatus.bbloff = false
                    end
                else
                    ofs3status.switchstatus.bblon = false
                end
                if ofs3status.switchbbloffParam ~= nil and ofs3status.switchbbloffParam:state() == true then
                    if ofs3status.switchstatus.bbloff == nil or ofs3status.switchstatus.bbloff == false then
                        system.playFile("sounds/switches/bbl-off.wav")
                        ofs3status.switchstatus.bblon = false
                        ofs3status.switchstatus.bbloff = true
                    end
                else
                    ofs3status.switchstatus.bbloff = false
                end

            end
			
			
			---
			-- TIME
			if ofs3status.linkUP ~= 0 then
				if armswitchParam ~= nil then
					if armswitchParam:state() == false then
						ofs3status.stopTimer = true
						stopTIME = os.clock()
						timerNearlyActive = 1
						ofs3status.theTIME = 0
					end
				end

				if ofs3status.idleupswitchParam ~= nil then
					if ofs3status.idleupswitchParam:state() then
						if timerNearlyActive == 1 then
							timerNearlyActive = 0
							startTIME = os.clock()
						end
						if startTIME ~= nil then ofs3status.theTIME = os.clock() - startTIME end
					end
				end

			end

			-- LOW FUEL ALERTS
			-- big conditional to announcement ofs3status.lfTimer if needed
			if ofs3status.linkUP ~= 0 then
				if ofs3status.idleupswitchParam ~= nil then
					if ofs3status.idleupswitchParam:state() then
						if (ofs3status.sensors.fuel <= ofs3status.lowfuelParam and ofs3status.alertonParam == 1) then
							ofs3status.lfTimer = true
						elseif (ofs3status.sensors.fuel <= ofs3status.lowfuelParam and ofs3status.alertonParam == 2) then
							ofs3status.lfTimer = true
						else
							ofs3status.lfTimer = false
						end
					else
						ofs3status.lfTimer = false
					end
				else
					ofs3status.lfTimer = false
				end
			else
				ofs3status.lfTimer = false
			end

			if ofs3status.lfTimer == true then
				-- start timer
				if ofs3status.lfTimerStart == nil then ofs3status.lfTimerStart = os.time() end
			else
				ofs3status.lfTimerStart = nil
			end

			if ofs3status.lfTimerStart ~= nil then
				-- only announcement if we have been on for 5 seconds or more
				if (tonumber(os.clock()) - tonumber(ofs3status.lfAudioAlertCounter)) >= ofs3status.alertintParam then
					ofs3status.lfAudioAlertCounter = os.clock()

					system.playFile("sounds/alerts/lowfuel.wav")

					-- system.playNumber(ofs3status.sensors.voltage / 100, 2, 2)
					if ofs3status.alrthptParam == true then system.playHaptic("- . -") end

				end
			else
				-- stop timer
				ofs3status.lfTimerStart = nil
			end

			-- LOW VOLTAGE ALERTS
			-- big conditional to announcement ofs3status.lvTimer if needed
			if ofs3status.linkUP ~= 0 then

				if ofs3status.idleupswitchParam ~= nil then
					if ofs3status.idleupswitchParam:state() then
						if (ofs3status.voltageIsLow and ofs3status.alertonParam == 0) then
							ofs3status.lvTimer = true
						elseif (ofs3status.voltageIsLow and ofs3status.alertonParam == 2) then
							ofs3status.lvTimer = true
						else
							ofs3status.lvTimer = false
						end
					else
						ofs3status.lvTimer = false
					end
				else
					ofs3status.lvTimer = false
				end
			else
				ofs3status.lvTimer = false
			end

			if ofs3status.lvTimer == true then
				-- start timer
				if ofs3status.lvTimerStart == nil then ofs3status.lvTimerStart = os.time() end
			else
				ofs3status.lvTimerStart = nil
			end

			if ofs3status.lvTimerStart ~= nil then
				if (os.time() - ofs3status.lvTimerStart >= ofs3status.sagParam) then
					-- only announcement if we have been on for 5 seconds or more
					if (tonumber(os.clock()) - tonumber(ofs3status.lvAudioAlertCounter)) >= ofs3status.alertintParam then
						ofs3status.lvAudioAlertCounter = os.clock()

						if ofs3status.lvStickannouncement == false then -- do not play if sticks at high end points
							system.playFile("sounds/alerts/lowvoltage.wav")
							-- system.playNumber(ofs3status.sensors.voltage / 100, 2, 2)
							if ofs3status.alrthptParam == true then system.playHaptic("- . -") end
						else
							-- print("Alarm supressed due to stick positions")
						end

					end
				end
			else
				-- stop timer
				ofs3status.lvTimerStart = nil
			end			
			---

        else
            ofs3status.adjJUSTUP = true
        end
    end

    return
end

function ofs3status.viewLogs()
    ofs3status.showLOGS = true
end

function ofs3status.menu(widget)

    return {
        {
            "View logs", function()
                ofs3status.viewLogs()
            end
        }
    }

end

return ofs3status
