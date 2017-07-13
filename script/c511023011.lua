--Elemental HERO Absolute Zero
function c511023011.initial_effect(c)
	local e1=Effect.CreateEffect(c)
	e1:SetType(EFFECT_TYPE_SINGLE)
	e1:SetProperty(EFFECT_FLAG_SINGLE_RANGE)
	e1:SetRange(LOCATION_MZONE)
	e1:SetCode(EFFECT_UPDATE_ATTACK)
	e1:SetValue(c511023011.value)
	c:RegisterEffect(e1)
end
function c511023011.filter(c)
	return c:IsFaceup() and c:IsRace(ATTRIBUTE_WATER)
end
function c511023011.value(e,c)
	return Duel.GetMatchingGroupCount(c511023011.filter,0,LOCATION_MZONE,LOCATION_MZONE,e:GetHandler())*500
end