flipped = true
function onBeatHit() 

	if curBeat % 1 == 0 then
		flipped = not flipped
		setProperty('iconP2.flipX', flipped)
		setProperty('iconP2.scale.x', 1.5)
		doTweenY('jumpUp', 'iconP2', getProperty('iconP2.y') - 60, 0.1, 'cubeOut')
	end
end

function onTweenCompleted(tag)
	if tag == 'jumpUp' then
		doTweenY('fallDown', 'iconP2', getProperty('iconP2.y') + 60, 0.1, 'cubeIn')
	end
end