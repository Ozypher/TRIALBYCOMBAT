package;

import flixel.FlxState;
import flixel.ui.FlxButton;
import flixel.FlxG;

class MenuState extends FlxState
{
	override public function create():Void
	{
        var _btnPlay:FlxButton;
        _btnPlay = new FlxButton(275,350, "Plead Innocent", clickPlay);
        add(_btnPlay);
		super.create();
		var text = new flixel.text.FlxText(0, 0, 0, "Trial By Combat", 58);
		text.screenCenter();
		add(text);
	}

    function clickPlay():Void
    {
        FlxG.switchState(new PlayState());
    }

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
}
