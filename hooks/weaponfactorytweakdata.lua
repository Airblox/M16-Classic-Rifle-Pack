Hooks:PostHook(WeaponFactoryTweakData, "init", "m16a1_retro_init", function(self)
    local function index_of(array, value)
        for i, v in ipairs(array) do
            if v == value then
                return i
            end
        end
        return nil
    end
    
    local function remove_from_array(array, value)
        if value then
            table.remove(array, index_of(array, value))
        end
    end

    self.wpn_fps_ass_m16.override.wpn_fps_ass_m16_retro = {
        stats = {
            spread = -2,
            damage = -20,
            concealment = 2,
            value = 1,
            recoil = 2,
            extra_ammo = -5,
            reload = 3
        },
        custom_stats = {
            ammo_pickup_max_mul = 5/3,
            ammo_pickup_min_mul = 5/3
        }
    }

    self.parts.wpn_fps_ass_m16_retro.override_weapon_add = {AMMO_MAX = 50}

    self.wpn_fps_ass_m16.override.wpn_fps_ass_m16_grenadier = {
        stats = {
            damage = -15,
            concealment = -5,
            value = 1,
            recoil = 3,
            spread = 2,
            reload = 1,
            suppression = -10
        },
        custom_stats = {
            ammo_pickup_max_mul = 4/3,
            ammo_pickup_min_mul = 4/3,
            burst_count = 3
        }
    }

    self.parts.wpn_fps_ass_m16_grenadier.override_weapon = {
        weapon_hold = "contraband",
        use_stance = "contraband",
        animations = {
            equip_id = "equip_contraband",
            reload_name_id = "contraband",
            recoil_steelsight = true
        }
    }

    self.wpn_fps_ass_m16.override.wpn_fps_ass_m16_rare = {
        stats = {
            damage = -40,
            concealment = -1,
            value = 1,
            recoil = 2,
            reload = 2
        },
        custom_stats = {
            ammo_pickup_max_mul = 5/3,
            ammo_pickup_min_mul = 5/3
        }
    }

    self.parts.wpn_fps_ass_m16_rare.override_weapon_add = {AMMO_MAX = 60}

    self.wpn_fps_ass_m16.override.wpn_fps_ass_m16_tactical = {
        stats = {
            damage = -15,
            concealment = -5,
            value = 1,
            recoil = 3,
            spread = 3,
            reload = 1
        },
        custom_stats = {
            ammo_pickup_max_mul = 4/3,
            ammo_pickup_min_mul = 4/3,
            burst_count = 3
        }
    }
    
    table.insert(self.wpn_fps_ass_m16.uses_parts, "wpn_fps_ass_m16_m203")
    table.insert(self.wpn_fps_ass_m16.uses_parts, "wpn_fps_ass_m16a4_acog")

    table.insert(self.wpn_fps_ass_m16.uses_parts, "wpn_fps_ass_m16_retro")
    table.insert(self.wpn_fps_ass_m16.uses_parts, "wpn_fps_ass_m16_grenadier")
    table.insert(self.wpn_fps_ass_m16.uses_parts, "wpn_fps_ass_m16_rare")
    table.insert(self.wpn_fps_ass_m16.uses_parts, "wpn_fps_ass_m16_tactical")
end)