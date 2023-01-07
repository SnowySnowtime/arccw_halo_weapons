
AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
include( 'shared.lua' )

function ENT:SpawnFunction( ply, tr )

	if ( !tr.Hit ) then return end
	
	local SpawnPos = tr.HitPos + tr.HitNormal * 32
	
	local ent = ents.Create( "needle_hce" )
	ent:SetPos( SpawnPos )
	ent:Spawn()
	ent:Activate()
	
	return ent
	
end


/*---------------------------------------------------------
   Name: Initialize
---------------------------------------------------------*/
function ENT:Initialize()
	
        self.Owner = self.Entity.Owner

	self.Entity:SetModel( "models/snowysnowtime/projectiles/plasma_projectile.mdl" )
	self.Entity:PhysicsInit( SOLID_VPHYSICS )
	self.Entity:SetMoveType( MOVETYPE_VPHYSICS )
	self.Entity:SetSolid( SOLID_VPHYSICS )
	util.SpriteTrail(self, 0, Color(255,255,255,179), false, 12, 1, 0.5, 1/(9+1)*0.3, "snowysnowtime/contrails/needler_contrail.vmt");
	
	local phys = self.Entity:GetPhysicsObject()
		  if (phys:IsValid()) then
			phys:Wake()
			phys:SetMass(1)
		  end

	phys:EnableGravity(false)
	MakeSprite( self.Entity, "14", "255 95 230", "sprites/glow02.vmt", "0.15", "235")
end

function MakeSprite( Entity, fx, color, spritePath, scale, transity)
	local Sprite = ents.Create("env_sprite");
	Sprite:SetPos( Entity:GetPos() );
	Sprite:SetKeyValue( "renderfx", fx )
	Sprite:SetKeyValue( "model", spritePath)
	Sprite:SetKeyValue( "scale", scale)
	Sprite:SetKeyValue( "spawnflags", "1")
	Sprite:SetKeyValue( "angles", "0 0 0")
	Sprite:SetKeyValue( "rendermode", "9")
	Sprite:SetKeyValue( "renderamt", transity)
	Sprite:SetKeyValue( "rendercolor", color )

	Sprite:Spawn()
	Sprite:Activate()
	Sprite:SetParent( Entity )

end

function ENT:OnTakeDamage( dmginfo )

	// React physically when shot/getting blown
	self.Entity:TakePhysicsDamage( dmginfo )

end

function ENT:PhysicsCollide(data,phy)
	local trace = {}
	trace.filter = {self.Entity}
	data.HitNormal = data.HitNormal * -1
	local start = data.HitPos + data.HitNormal
	local endpos = data.HitPos - data.HitNormal

	local Ent = data.HitEntity
	local effectdata = EffectData()
	effectdata:SetStart( data.HitPos )
	effectdata:SetOrigin( data.HitPos )
	effectdata:SetScale( 1 )
 
	self:Remove()

	if (Ent:IsPlayer() || Ent:IsNPC()) then 
		if ( Ent:IsValid()) then
			Ent:TakeDamage( math.random(17,17), self.Entity.Owner)
		end
		local effectdata = EffectData()
		effectdata:SetStart( data.HitPos )
		effectdata:SetOrigin( data.HitPos )
		effectdata:SetScale( 1 )
		util.Effect( "BloodImpact", effectdata )
	end
end

function ENT:Touch(ent)
	if ent:IsValid() then
		if string.find(ent:GetClass(),"trigger_") == 1 then return end
		if string.find(ent:GetClass(),"func_") == 1 then return end
	end
	self.Entity:Fire("kill", "", 0)

end

/*---------------------------------------------------------
   Name: Use
---------------------------------------------------------*/
function ENT:Use( activator, caller )


end

function ENT:Think()
end