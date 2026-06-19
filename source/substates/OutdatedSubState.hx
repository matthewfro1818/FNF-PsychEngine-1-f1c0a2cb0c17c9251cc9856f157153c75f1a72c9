package substates;

import flixel.tweens.FlxTween;
import flixel.tweens.FlxEase;

import states.MainMenuState;
import states.TitleState;

class OutdatedSubState extends MusicBeatSubstate
{
	public static var updateVersion:String = CoolUtil.checkForUpdates();
	var leftState:Bool = false;

	var bg:FlxSprite;
	var warnText:FlxText;

	override function create()
	{
<<<<<<< HEAD
=======
		controls.isInSubstate = true;
		final enter:String = (controls.mobileC) ? 'A' : 'ENTER';
		final back:String = (controls.mobileC) ? 'B' : 'BACK';

>>>>>>> mobile/main
		super.create();

		bg = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);
		bg.scrollFactor.set();
		bg.alpha = 0.0;
		add(bg);

		warnText = new FlxText(0, 0, FlxG.width,
			'Sup bro, looks like you\'re running an outdated version of\nPsych Engine (${MainMenuState.psychEngineVersion})\n
			-----------------------------------------------\n
<<<<<<< HEAD
			Press ENTER to update to the latest version ${updateVersion}\n
			Press ESCAPE to proceed anyway.\n
=======
			Press $enter to update to the latest version ${updateVersion}\n
			Press $back to proceed anyway.\n
>>>>>>> mobile/main
			You can disable this warning by unchecking the
			"Check for Updates" setting in the Options Menu\n
			-----------------------------------------------\n
			Thank you for using the Engine!',
			32);
		warnText.setFormat(Paths.font("vcr.ttf"), 32, FlxColor.WHITE, CENTER);
		warnText.scrollFactor.set();
		warnText.screenCenter(Y);
		warnText.alpha = 0.0;
		add(warnText);

<<<<<<< HEAD
		FlxTween.tween(bg, { alpha: 0.8 }, 0.6, { ease: FlxEase.sineIn });
		FlxTween.tween(warnText, { alpha: 1.0 }, 0.6, { ease: FlxEase.sineIn });
=======
		addTouchPad("NONE", "A_B");
		touchPad.alpha = 0;

		FlxTween.tween(bg, { alpha: 0.8 }, 0.6, { ease: FlxEase.sineIn });
		FlxTween.tween(warnText, { alpha: 1.0 }, 0.6, { ease: FlxEase.sineIn });
		FlxTween.tween(touchPad, { alpha: 1.0 }, 0.6, { ease: FlxEase.sineIn });
>>>>>>> mobile/main
	}

	override function update(elapsed:Float)
	{
		if(!leftState) {
			if (controls.ACCEPT) {
				leftState = true;
<<<<<<< HEAD
				CoolUtil.browserLoad("https://github.com/ShadowMario/FNF-PsychEngine/releases");
=======
				CoolUtil.browserLoad("https://github.com/MobilePorting/FNF-PsychEngine-Mobile/releases");
>>>>>>> mobile/main
			}
			else if(controls.BACK) {
				leftState = true;
			}
			if(leftState)
			{
				FlxG.sound.play(Paths.sound('cancelMenu'));
				FlxTween.tween(bg, { alpha: 0.0 }, 0.9, { ease: FlxEase.sineOut });
<<<<<<< HEAD
=======
				FlxTween.tween(touchPad, { alpha: 0.0 }, 1, { ease: FlxEase.sineOut });
>>>>>>> mobile/main
				FlxTween.tween(warnText, {alpha: 0}, 1, {
					ease: FlxEase.sineOut,
					onComplete: function (twn:FlxTween) {
						FlxG.state.persistentUpdate = true;
<<<<<<< HEAD
=======
						controls.isInSubstate = false;
>>>>>>> mobile/main
						close();
					}
				});
			}
		}
		super.update(elapsed);
	}
}
