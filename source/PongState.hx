package;

import flixel.util.FlxCollision;
import flixel.FlxG;
import flixel.FlxState;
import player.PongPlayer;
import pong.Ball;
import flixel.group.FlxGroup;

class PongState extends FlxState {

    private var firstplayer:PongPlayer;
    private var secondplayer:PongPlayer;
    private var ball:Ball;

    @:isVar()
    public var firstPlayerScore(get, set): Int;
    @:isVar()
    public var secondPlayerScore(get, set): Int;

    private var collideWall:FlxGroup;

    override public function create():Void {
        super.create();

        firstplayer = new PongPlayer([Z, S]);
        firstplayer.x = 100;
        add(firstplayer);

        secondplayer = new PongPlayer([P, M]);
        secondplayer.x = FlxG.width - 100;
        add(secondplayer);

        ball = new Ball();
        ball.screenCenter();
        add(ball);

        collideWall = FlxCollision.createCameraWall(FlxG.camera, true, 1, true);
    }

    override public function update(elapsed:Float):Void {
        super.update(elapsed);
        FlxG.collide(this.firstplayer, this.collideWall);
        FlxG.collide(this.secondplayer, this.collideWall);
    }

    public function get_firstPlayerScore() {
        return this.firstPlayerScore;
    }

    public function set_firstPlayerScore(score:Int) {
        return this.firstPlayerScore = score;
    }

    public function get_secondPlayerScore() {
        return this.secondPlayerScore;
    }

    public function set_secondPlayerScore(score:Int) {
        return this.secondPlayerScore = score;
    }

}