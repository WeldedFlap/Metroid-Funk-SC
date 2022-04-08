function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.1 then
        if string.match(getProperty('dad.animation.curAnim.name'), "sing") then
            setProperty('health', getProperty(health - 0.02))
        end
    end
end

function onCreate()
    setProperty('boyfriend.flipX', true)
    setProperty('dad.flipX', true)
end

function onUpdatePost()
    for i = 0, 3 do
        setPropertyFromGroup('opponentStrums', i, 'alpha', 0)
        setPropertyFromGroup('opponentStrums', i, 'x', 9999999)
        setPropertyFromGroup('opponentStrums', i, 'y', 9999999)
    end
end