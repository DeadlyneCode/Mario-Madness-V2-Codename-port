//this is my home -deadlyne

import flixel.addons.display.FlxBackdrop;

var path1:String = "stages/demise/1/";
var path2:String = "stages/demise/2/";

function create() {

    bg = new FlxBackdrop(Paths.image("stages/demise/1/Demise_BG_BGCaca"));
    bg.scale.set(0.5,0.5);
    bg.velocity.set(-50, 0);
    add(bg);
    
    floor = new FlxSprite();
    floor.frames = Paths.getFrames(path1 +'Demise_BG_suelo');
    floor.animation.addByPrefix('idle', "Floor", 24);
    floor.animation.play('idle');
    floor.antialiasing = false;
    //floor.screenCenter(); stupid idea
    floor.scrollFactor.set();
    floor.y = 400;
    floor.x = -400;
    floor.scale.set(0.5,0.5);
    floor.visible = true; //for the switch stages
    floor.updateHitbox();
    add(floor);
}