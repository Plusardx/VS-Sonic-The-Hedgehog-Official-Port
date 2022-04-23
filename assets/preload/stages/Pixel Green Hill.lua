function onCreate()
	-- background shit

          makeAnimatedLuaSprite('Ghz','Ghz',-270, -450)addAnimationByPrefix('Ghz','dance','Ghz green',4,true)
          objectPlayAnimation('Ghz','dance',false)
          setScrollFactor('Ghz', 1, 1);
          scaleObject('Ghz', 3, 3);

          addLuaSprite('Ghz', false);
 	  setProperty('Ghz.antialiasing',false)
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end