AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )  
include( "shared.lua" )
include("crate_config.lua") 

function ENT:Initialize()
self.Entity:SetModel( "models/props_junk/wood_crate001a.mdl" )
self.Entity:PhysicsInit( SOLID_VPHYSICS )     
self.Entity:SetMoveType( MOVETYPE_VPHYSICS )   
self.Entity:SetSolid( SOLID_VPHYSICS )
self.Entity:DrawShadow(false)       
self.Entity:SetUseType(SIMPLE_USE)
local phys = self.Entity:GetPhysicsObject()
if (phys:IsValid()) then
phys:Wake()
end


end

function ENT:Use(ply) 
	local item1 = ents.Create(weapon_crate_item1) ------------To add the same item more than once copy the first 3 lines minus the local and paste it and change the Y axis ( 3rd value ) so it would't explode out.
			item1:SetPos(self:GetPos() + Vector(0, 0, 40))
			item1:Spawn()

			
	local item2 = ents.Create(weapon_crate_item2)
			item2:SetPos(self:GetPos() + Vector(0, 0, 50))
			item2:Spawn()

	local item3 = ents.Create(weapon_crate_item3) ------------To add the same item more than once copy the first 3 lines minus the local and paste it and change the Y axis ( 3rd value ) so it would't explode out.
			item3:SetPos(self:GetPos() + Vector(0, 0, 60))
			item3:Spawn()

			
	local item4 = ents.Create(weapon_crate_item4)
			item4:SetPos(self:GetPos() + Vector(0, 0, 70))
			item4:Spawn()	

self:Remove()
end





