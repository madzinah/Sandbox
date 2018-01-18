package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.ui.FlxButton;

class PlayState extends FlxState
{
    override public function create():Void
    {
        super.create();

        var button = new FlxButton(100, 0, "Pong", openPong);
        button.screenCenter();
        add(button);

    }

    override public function update(elapsed:Float):Void
    {
        super.update(elapsed);
    }

    private function openPong() {
        FlxG.switchState(new PongState());
    }

}
