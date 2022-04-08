function onCreate()
	setProperty("gf.visible", false)
end

function onUpdatePost(elapsed)
	if getProperty("gf.curCharacter") == "ridley" then
		local songPos = getSongPosition()
		local currentBeat = (songPos / 1000) * (bpm / 120)

		doTweenY("UpAndDown", 'gf', 600 - 100 * math.sin((currentBeat * 0.25) * math.pi), 0.001)
	end
end

function onBeatHit()
	if curBeat == 306 then
		setProperty("gf.visible", true)
	end
end