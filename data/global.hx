import funkin.backend.utils.NativeAPI;

function new(){
    // settings that get set to true on first launch

    if (FlxG.save.data.flashingLights == null) FlxG.save.data.flashingLights = true;
}

static var redirectStates:Map<FlxState, String> = [
    TitleState => "customStates/MarioTitleState",
];

function update(elapsed) {
    window.title = "Mario's Madness V2";

    if (FlxG.keys.justPressed.F6)
        NativeAPI.allocConsole();
    if (FlxG.keys.justPressed.F5)
        FlxG.resetState();
}

function preStateSwitch() {
    FlxG.camera.bgColor = 0xFF000000;

	for (redirectState in redirectStates.keys())
		if (FlxG.game._requestedState is redirectState)
            FlxG.game._requestedState = new ModState(redirectStates.get(redirectState));
}