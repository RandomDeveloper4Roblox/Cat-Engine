package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.graphics.frames.FlxAtlasFrames;

class BunzoMamaBG extends FlxSprite
{
	public function new(x:Float, y:Float, facingRight:Bool)
	{
		frames = Paths.getSparrowAtlas('mama1');
		animation.addByPrefix('idle', 'mommygf ' + FlxG.random.int(1, 2), 19, false);
		animation.play('idle');
		animation.curAnim.curFrame = FlxG.random.int(0, animation.curAnim.frames.length - 1);
		antialiasing = ClientPrefs.globalAntialiasing;
		super(x, y);

		updateHitbox();
		setGraphicSize(Std.int(0.8 * width));
		updateHitbox();
	}
}