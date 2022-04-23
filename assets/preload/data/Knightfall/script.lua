-- Dialogue
local playDialogue = false;
local playedVideo = false;
function onStartCountdown()
	if not playedVideo and isStoryMode and not seenCutscene then -- Block the first countdown and play video cutscene
		startVideo('2');
		playDialogue = true;
		playedVideo = true;
		return Function_Stop;
	elseif playDialogue then -- Block the second countdown and start a timer of 0.8 seconds to play the dialogue
		playedVideo = true;
		playDialogue = false;
		playMusic('psy-dialogue', 0, true);
		soundFadeIn(nil, 2);
		setProperty('inCutscene', true);

		setProperty('camGame.zoom', 0.9);
		runTimer('startZoom', 0);
		runTimer('startDialogue', 2.75);

		makeLuaSprite('blackTransition', nil, -500, -400);
		makeGraphic('blackTransition', screenWidth * 2, screenHeight * 2, '000000')
		addLuaSprite('blackTransition', true);
		return Function_Stop;
	end
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then -- Timer completed, play dialogue
		startDialogue('dialogue');
	elseif tag == 'startZoom' then
		doTweenZoom('camGameZoomTwn', 'camGame', getProperty('defaultCamZoom'), 2, 'quadInOut');
		doTweenAlpha('blackTransitionTwn', 'blackTransition', 0, 2, 'sineOut');
	elseif tag == 'endSongAgain' then
		endSong();
	elseif tag == 'startBlackTrans' then
		doTweenAlpha('blackTransitionEndTwn', 'blackTransition', 0.8, 6, 'sineOut');
	elseif tag == 'endSongBlackTrans' then
		doTweenAlpha('blackTransitionTwn', 'blackTransition', 0, 1, 'linear');
	end
end

function onTweenCompleted(tag)
	if tag == 'blackTransitionTwn' then
		removeLuaSprite('blackTransition');
	end
end