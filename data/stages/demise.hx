//this is my home -deadlyne

import flixel.addons.display.FlxBackdrop;

var path1:String = "stages/demise/1/";
var path2:String = "stages/demise/2/";
var shader:CustomShader = null; //suck ass
var shader2:CustomShader = null; //suck ass

function create() {

    remove(dad);
    remove(gf);
    remove(boyfriend);

    bg1 = new FlxBackdrop(Paths.image("stages/demise/1/Demise_BG_BG2"),1,1,false,true);
    bg1.scale.set(0.8,0.8);
    bg1.velocity.set(50, 0);
    bg1.y = -100;

    bg = new FlxBackdrop(Paths.image("stages/demise/1/Demise_BG_BGCaca"),1,0,false,true);
    bg.scale.set(0.8,0.8);
    bg.velocity.set(250, 0);

    bush = new FlxBackdrop(Paths.image("stages/demise/1/Demise_BG_BG1"),1,1,false,true);
    bush.scale.set(0.7,0.7);
    bush.velocity.set(1500, 0);
    bush.y = 400;
    
    floor = new FlxSprite();
    floor.frames = Paths.getFrames(path1 +'Demise_BG_suelo');
    floor.animation.addByPrefix('idle', "Floor", 48);
    floor.animation.play('idle');
    floor.antialiasing = false;
    //floor.screenCenter(); stupid idea
    floor.scrollFactor.set();
    floor.y = 500;
    floor.x = -450;
    floor.scale.set(0.65,0.65);
    floor.visible = true; //for the switch stages
    floor.updateHitbox();

    shader = new CustomShader("85");
    shader = new CustomShader("tv");
    //camGame.addShader(shader2);

    add(bg1);
    add(bg);
    add(bush);
    add(floor);
    add(dad);
    add(boyfriend);
}