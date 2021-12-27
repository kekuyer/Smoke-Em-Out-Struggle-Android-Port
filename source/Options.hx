package;

class Options
{
	public static var masterVolume:Float = 1;
}
class CustomControls extends Option

{

	public function new(desc:String)
	{
		super();
		description = desc;
	}
	public override function press():Bool
	{
		FlxG.switchState(new options.CustomControlsState());
		return true;
	}
	private override function updateDisplay():String
	{
		return "controls";
	}

}
class About extends Option
{
	public function new(desc:String)
	{
		super();
		description = desc;
	}
	public override function press():Bool
	{
		FlxG.switchState(new options.AboutState());
		return true;
	}
	private override function updateDisplay():String
	{
		return "About";
	}

}