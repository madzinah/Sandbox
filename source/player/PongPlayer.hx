package player;

import flixel.math.FlxPoint;
import flixel.util.FlxColor;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.input.keyboard.FlxKey;

class PongPlayer extends FlxSprite {

    public var speed:Float = 500;
    private var keys:Array<FlxKey>;

    public function new(keys:Array<FlxKey>):Void {
        super();

        if (keys.length < 2) {
            keys = [UP, DOWN];
        }

        this.keys=keys;
        makeGraphic(16, 64, FlxColor.WHITE);
        drag.x = drag.y = 1600;
    }

    override public function update(elapsed:Float):Void {
        movement();
        super.update(elapsed);
    }

    private function movement():Void {
        var _up:Bool = false;
        var _down:Bool = false;

        _up = FlxG.keys.anyPressed([this.keys[0]]);
        _down = FlxG.keys.anyPressed([this.keys[1]]);

        if (_up && _down)
            _up = _down = false;

        var mA:Float = 0;
        if (_up)
        {
            mA = -90;
        }
        else if (_down)
        {
            mA = 90;
        }
        velocity.set(_up || _down ? speed : 0, 0);
        velocity.rotate(FlxPoint.weak(0, 0), mA);
    }
}