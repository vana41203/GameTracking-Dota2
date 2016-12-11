--============ Copyright (c) Valve Corporation, All rights reserved. ==========
--
-- source1import auto-generated animation script
-- local changes will be overwritten if source1import if run again on this asset
--
-- qc:  models/items/lone_druid/viciouskraitpanda/viciouskrait_panda.qc
-- mdl: items/lone_druid/viciouskraitpanda/viciouskrait_panda.mdl
--
--=============================================================================

model:CreateSequence(
	{
		name = "turns_center",
		delta = true,
		fadeInTime = 0,
		fadeOutTime = 0,
		fps = 30,
		framerangesequence = "sb_turns_center.smd",
		cmds = {
			{ cmd = "sequence", sequence = "sb_turns_center.smd", dst = 1 },
			{ cmd = "fetchframe", sequence = "centerpose", frame = 0, dst = 2 },
			{ cmd = "subtract", dst = 1, src = 2 },
			{ cmd = "slerp", dst = 0, src = 1 }
		}
	}
)

model:CreateSequence(
	{
		name = "turns_left",
		delta = true,
		fadeInTime = 0,
		fadeOutTime = 0,
		fps = 30,
		framerangesequence = "sb_turns_left.smd",
		cmds = {
			{ cmd = "sequence", sequence = "sb_turns_left.smd", dst = 1 },
			{ cmd = "fetchframe", sequence = "centerpose", frame = 0, dst = 2 },
			{ cmd = "subtract", dst = 1, src = 2 },
			{ cmd = "slerp", dst = 0, src = 1 }
		}
	}
)

model:CreateSequence(
	{
		name = "turns_right",
		delta = true,
		fadeInTime = 0,
		fadeOutTime = 0,
		fps = 30,
		framerangesequence = "sb_turns_right.smd",
		cmds = {
			{ cmd = "sequence", sequence = "sb_turns_right.smd", dst = 1 },
			{ cmd = "fetchframe", sequence = "centerpose", frame = 0, dst = 2 },
			{ cmd = "subtract", dst = 1, src = 2 },
			{ cmd = "slerp", dst = 0, src = 1 }
		}
	}
)

model:CreateSequence(
	{
		name = "sb_turns",
		delta = true,
		fadeInTime = 0.2,
		fadeOutTime = 0.2,
		poseParamX = model:CreatePoseParameter( "turn", -1, 1, 0, false ),
		sequences = {
			{ "turns_left", "turns_center", "turns_right" }
		}
	}
)


model:CreateSequence(
	{
		name = "run",
		looping = true,
		fadeInTime = 0.2,
		fadeOutTime = 0.2,
		sequences = {
			{ "@run" }
		},
		addlayer = { "sb_turns" },
		activities = {
			{ name = "ACT_DOTA_RUN", weight = 1 }
		}
	}
)


model:CreateSequence(
	{
		name = "run_injured",
		looping = true,
		fadeInTime = 0.2,
		fadeOutTime = 0.2,
		sequences = {
			{ "@run_injured" }
		},
		addlayer = { "sb_turns" },
		activities = {
			{ name = "ACT_DOTA_RUN", weight = 1 },
			{ name = "injured", weight = 1 }
		}
	}
)


model:CreateSequence(
	{
		name = "run_haste",
		looping = true,
		fadeInTime = 0.2,
		fadeOutTime = 0.2,
		sequences = {
			{ "@run_haste" }
		},
		addlayer = { "sb_turns" },
		activities = {
			{ name = "ACT_DOTA_RUN", weight = 1 },
			{ name = "haste", weight = 1 }
		}
	}
)

