function onCreate()
	-- background shit
	makeLuaSprite('actualghz', 'actualghz', -600, -300);
	setScrollFactor('actualghz', 0.9, 0.9);



	addLuaSprite('actualghz', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end