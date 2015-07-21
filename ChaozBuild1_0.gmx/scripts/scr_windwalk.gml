if keyboard_check(vk_space)
    {
    with(obj_player)
        {
        
        phy_linear_damping = clamp(phy_linear_damping-0.1,originaldamp*0.4,originaldamp)
        }
    }
else
    {
    with(obj_player)
        {
        phy_linear_damping = clamp(phy_linear_damping+0.1,originaldamp*0.4,originaldamp)
        }
    }
with(obj_player)
    if phy_linear_damping < originaldamp
        part_particles_create(global.wind_sys,x+irandom_range(-32,32),y+irandom_range(-32,32),global.wind_pt,floor(phy_linear_damping*3))
