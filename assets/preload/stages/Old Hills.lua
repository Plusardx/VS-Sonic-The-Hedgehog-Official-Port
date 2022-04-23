function onCreate()
	-- background shit
	makeLuaSprite('dusth', 'dusth', -600, -300);
	setScrollFactor('dusth', 0.9, 0.9);



	addLuaSprite('dusth', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end