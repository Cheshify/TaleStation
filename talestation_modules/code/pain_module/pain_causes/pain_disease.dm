/datum/symptom/headache/Activate(datum/disease/advance/A)
	. = ..()
	if(!.)
		return
	switch(A.stage)
		if(4)
			A.affected_mob.sharp_pain(BODY_ZONE_HEAD, 3 * power)
			A.affected_mob.flash_pain_overlay(1)
		if(5)
			A.affected_mob.sharp_pain(BODY_ZONE_HEAD, 5 * power)
			A.affected_mob.flash_pain_overlay(2)

/datum/symptom/flesh_eating/Activate(datum/disease/advance/A)
	. = ..()
	if(!.)
		return
	switch(A.stage)
		if(2, 3)
			A.affected_mob.cause_pain(BODY_ZONES_ALL, 3 * (pain ? 2 : 1))
			A.affected_mob.flash_pain_overlay(1, 2 SECONDS)
		if(4, 5)
			A.affected_mob.cause_pain(BODY_ZONES_ALL, 12 * (pain ? 2 : 1))
			A.affected_mob.flash_pain_overlay(2, 2 SECONDS)

/datum/symptom/fire/Activate(datum/disease/advance/A)
	. = ..()
	if(!.)
		return
	switch(A.stage)
		if(4)
			A.affected_mob.cause_typed_pain(BODY_ZONES_ALL, 5, BURN)
			A.affected_mob.flash_pain_overlay(1)
			A.affected_mob.pain_emote("scream", 5 SECONDS)
		if(5)
			A.affected_mob.cause_typed_pain(BODY_ZONES_ALL, 10, BURN)
			A.affected_mob.flash_pain_overlay(1)
			A.affected_mob.pain_emote("scream", 5 SECONDS)
