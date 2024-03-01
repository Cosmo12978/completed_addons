------ feel free to edit ------

AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )  
include( "shared.lua" )

function ENT:Initialize()
self.Entity:SetModel( "models/Eli.mdl" )
self.Entity:PhysicsInit( SOLID_VPHYSICS )     
self.Entity:SetMoveType( MOVETYPE_VPHYSICS )   
self.Entity:SetSolid( SOLID_BBOX ) 
self.Entity:DrawShadow(false)
self.Entity:SetUseType(SIMPLE_USE)

local phys = self.Entity:GetPhysicsObject()
if (phys:IsValid()) then
phys:Wake()
end
end

function ENT:Use(ply)
if ply:canAfford(5000) and ply:isArrested() then ---- checks if player has 5000 or more and if there arrested. if they have 5k and is arrested then remove 5k and unarrest player then notify that cuffs are cut. 
   ply:addMoney(-5000)
   ply:unArrest()
   DarkRP.notify(ply, 3, 6, "Cuffs cut by mysterious man.")
else ------- if player does't have the money or is not arrested then just tells them they can't use it
DarkRP.notify(ply, 1, 6, "Can't afford to brake you out sorry :(.")
end
end