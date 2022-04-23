function onCreate()
	-- background shit
	makeLuaSprite('newone', 'newone', -600, -300);
	setScrollFactor('newone', 0.9, 0.9);



	addLuaSprite('newone', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end