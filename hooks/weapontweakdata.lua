Hooks:PostHook(WeaponTweakData, "init", "m16_grenadier_m203", function(self)
	self.m16a2_m203.weapon_hold = "contraband"
	self.m16a2_m203.animations.reload_name_id = "contraband"

	self:SetupAttachmentPoint("m16", {  -- A2 Barrel
		name = "a_b2",
		base_a_obj = "a_b",
		position = Vector3(0, -5.00, 0),
		rotation = Rotation(0, 0, 0)
	})

	self:SetupAttachmentPoint("m16", {  -- A2 Front sight
		name = "a_os2",
		base_a_obj = "a_os",
		position = Vector3(0, -3.60, 0),
		rotation = Rotation(0, 0, 0)
	})

	self:SetupAttachmentPoint("m16", {  -- M203
		name = "a_gl",
		base_a_obj = "a_fl",
		position = Vector3(-2.75, 9.25, -2.15),
		rotation = Rotation(0, 0, 0)
	})

	self:SetupAttachmentPoint("m16", {  -- A4 Front sight
		name = "a_os4",
		base_a_obj = "a_os",
		position = Vector3(0, -1.25, 0),
		rotation = Rotation(0, 0, 0)
	})
end)