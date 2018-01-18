package pong;

import flixel.util.FlxColor;
import flixel.FlxSprite;

class Ball extends FlxSprite {

    public var speed:Float = 300;

    public function new():Void {
        super();

        makeGraphic(20, 20, FlxColor.WHITE);
    }

    override public function update(elapsed:Float):Void {
        movement();
        super.update(elapsed);
    }

    private function movement():Void {
        //velocity.set(this.speed, 0);
        //velocity.rotate(FlxPoint.weak(0, 0), mA);
    }
}