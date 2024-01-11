script_key=""; -- you dont need to add anything here

getgenv().Silent = {
    Enabled = true,
    Mode = "FOV", -- "FOV" or "Target"
    ModeType = "Safe", -- Safe, Unlegit
    Mode2 = true,
    HitMode = "ClosestPoint", -- ClosestPoint / ClosestBodypart (ClosestPoint is more legit)
    Prediction = 0.127271,
    AutoPrediction = true, -- If true, prediction will be automatically set based on your ping using PredefinedPredictions
    RegularModeVisualizer = true, -- This will the place where silent aim will hit.

}

getgenv().Camlock = {
    Enabled = true,
    SafetyMeasures = true, -- If true, camlock will not work if you are in thirdperson without shiftlock
    Prediction = 0.13,
    Stickness = 0.135,
	UseTarget = true, -- If true, camlock will be synced with whoever you are targeting and will immediately follow them (recommnded for target silent)
    Parts = {"Head", "UpperTorso", "LowerTorso"},
	Activation = { -- Activation method is convenient if you're using Regular Silent
        Mode = "Keybind", -- Mouse, Keybind 
        Type = "Toggle", -- Hold, Toggle
        Keybind = "X",
        MouseButton = "RightButton" -- You have to right click to use camlock
    },
	FOV = 1000,
	Smoothness = 0.0208165, -- How smooth the camera will move
    AirShot = true,
    AirShotSmooth = 0.02465, 
	ShakeValue = { -- Reference: https://t4.ftcdn.net/jpg/05/12/86/27/360_F_512862789_abYbb2RPLzpN8aAjteTBb4xGnRgqVSyw.jpg
        Enabled = false,
        X = 5, -- How much the camera will shake on the X axis
        Y = 5, -- How much the camera will shake on the Y axis
        Z = 5, -- How much the camera will shake on the Z axis
    },
    EasingStyle = "Exponential",
    --[[
        Linear, Sine, Back, Quad, Quar, Quint, Bounce, Elastic, Exponential, Circular, Cubic ( https://create.roblox.com/docs/reference/engine/enums/EasingStyle )
    ]]--
}

getgenv().SafetyMeasures = { 
	NoFloorShots = true, -- Prevents you from hitting ground shot
	AntiCurve = {
        Enabled = false,
        X = 80, -- If the player position is X pixels away from the X axis, it will not redirect the shots
        Y = 80, -- If the player position is Y pixels away from the Y axis, it will not redirect the shots
        PrintDistance = true -- If true, it will print the distance between the player and the X and Y axis, this is useful for finding the perfect values for X and Y for you
    },
    OverrideYAxis = true -- will override your y axis meaning VERY LEGIT!
}

getgenv().Prediction_Points = { -- Ensures that you ONLY hit realistic prediction points
    Power = 7.75 -- Lowest is 1 (most realistic and harder to hit)
}

getgenv().FovSettings = {
    Visible = true,
	Thickness = 0.2,
	NumSides = 50,
    Radius = 20,
	Filled = true,
    Color = Color3.fromRGB(0, 0, 0),

	BoxFOV = {
        Visible = false,
        Thickness = 2,
        Height = 2,
        Width = 2,
        Color = Color3.fromRGB(255, 0, 0)
    }
}

getgenv().Tracer = { -- basically aimassist fov settings
	Visible = false,
	Thickness = 0.5,
	Color = Color3.fromRGB(0, 0, 0),
}

getgenv().Ranges = {
    LongDistance = 65,
    MediumDistance = 35,
    ShortDistance = 15
}

getgenv().Macro = {
	Enabled = true,
	Mode = "Toggle", -- Hold, Toggle
	Type = "First", --// "First", "Third"
	BypassMacroAbuse = true,
	NoClipMacro = true,
	Delay = 0.01
}

getgenv().Checks = {
    Wall = true,
    Visible = true,
    ForceField = true,
    Team = true,
    Alive = true,
    Friend = false,
    Crew = false
}

getgenv().Guns = { -- too lazy to add this
    FOVS = {
        -- {ShortDistanceFOV, MediumDistanceFOV, LongDistanceFOV}
        Revolver = {4, 3, 2.75},
        DoubleBarrel = {6.25, 5, 4.5},
        Shotgun = {6.5, 6, 5.75},
        TacticalShotgun = {6.5, 6, 5.75},
        SMG = {1, 1, 1},
        Silencer = {1, 1, 1},
        AssaultRifle = {1, 1, 1},
        Others = {1, 1, 1}
    }
}

getgenv().Hitchances = { -- Higher the number, higher the chance of hitting MAX IS 100
    Ground = {
        Revolver = 100,
        DoubleBarrel = 100,
        Shotgun = 100,
        TacticalShotgun = 100,
        SMG = 100,
        Silencer = 100,
        AssaultRifle = 100,
        Others = 100
    },
    Air = {
        Revolver = 100,
        DoubleBarrel = 100,
        Shotgun = 100,
        TacticalShotgun = 100,
        SMG = 100,
        Silencer = 100,
        AssaultRifle = 100,
        Others = 100
    }
}

getgenv().Resolver = {
    Enabled = true, 
    Type = "Osiris", -- Roblox, Osiris ( Automatically will set to "Osiris" when anti aim is detected. )
}

getgenv().Misc = {
    HideVisualsOnStart = true, -- Will hide visuals upon execution [ Doesn't work ]
    Raid_Awareness = true, -- [ Doesn't work ]
	FPSBoost = false, -- [ uwp optimize ]
    RemoveSeats = false,
    AntiFling = false
}

getgenv().Keybinds = {
	NormalSilToggle = "C",
	Anti_Lock = "V",
    Triggerbot = "B",
	Raid_Awareness = "T", -- [ Doesn't work ]
    HideVisuals = "M",
	Macro = "X",
	NoClipMacro = "N",
	OverrideYAxisToggle = "J"
}

getgenv().Anti_Lock = {
	Enabled = false,
	Type = "Sides", -- NormalDS, PredictionDisabler, Sides
	Mode = "Toggle"
}

getgenv().TriggerBot = {
    Enabled = false,
	FOV = {
        Visible = false,
        Thickness = 0.5,
        NumSides = 50,
        Radius = 2.25,
        Filled = false,
        Transparency = 0.2,
        Color = Color3.fromRGB(0, 0, 0)
    },
    Parts = {"Head", "UpperTorso", "LowerTorso"},
    MinDelay = 0.001,
    MaxDelay = 0.001,
    ModeType = "Unlegit",
    BoxSync = true,
    Mode = "Hold"
}

getgenv().MemSpoofer = {
    Enabled = false,
    MinMemory = 940,
    MaxMemory = 942,
    MaxDelay = 1.5,
    MinDelay = 1
}

getgenv().PredefinedPredictions = {  -- THIS WILL ONLY WORK IF YOU HAVE AUTOPREDICTION ON
	Ping30_40 = 0.121,
	Ping40_50 = 0.12354923,
	Ping50_60 = 0.12585,
	Ping60_70 = 0.1321687,
	Ping70_80 = 0.1351382,
	Ping80_90 = 0.1412591,
	Ping90_100 = 0.143902,
	Ping100_110 = 0.14518932,
	Ping110_120 = 0.14981296,
	Ping120_130 = 0.15442,
	Ping130_140 = 0.1579289,
}

getgenv().Chat = {
    Enabled = false,
    Settings = {
        Prediction = "/e pred", -- number example: /e pred 0.125
        AutoPrediction = "/e autopred", -- true or false example: /e autopred true
        Antilock = "/e antilock", -- true or false example: /e antilock true
        AntiLockMode = "/e antilockmode" -- NormalDS or PredictionDisabler example: /e antilockmode NormalDS
    }
}
