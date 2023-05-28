EFFECT.Duration			= 3;
EFFECT.Size				= 32;

local MaterialGlow		= Material( "effects/arc9ce/halo_ce/flare_pr_overcharge" );

function EFFECT:Init( data )
	local Pos = data:GetOrigin()
	
	self.Position = data:GetStart()
	self.Pos = data:GetOrigin()
	self.WeaponEnt = data:GetEntity()
	self.Attachment = data:GetAttachment()
	self.DataNormal = data:GetNormal()
	
	self.StartPos = self:GetTracerShootPos( self.Position, self.WeaponEnt, self.Attachment )
	self.EndPos = data:GetOrigin()
	self.Entity:SetRenderBoundsWS(self.StartPos, self.EndPos)
	
	local sub = self.EndPos - self.StartPos
	self.Normal = sub:GetNormal()
	
	self.LifeTime = self.Duration;
	
	local emitter = ParticleEmitter( Pos )
	
	for i = 1,7 do

		local particle = emitter:Add( "effects/arc9ce/halo_ce/flare_generic2", Pos + Vector( math.random(0,0),math.random(0,0),math.random(0,0))) 
		 
		if particle == nil then particle = emitter:Add( "effects/arc9ce/halo_ce/flare_generic2", Pos + Vector(   math.random(0,0),math.random(0,0),math.random(0,0) ) ) end
		
		if (particle) then
			particle:SetVelocity(Vector(0, 0, 0))
			particle:SetLifeTime(0) 
			particle:SetDieTime(0.4) 
			particle:SetStartAlpha(255)
			particle:SetEndAlpha(0)
			particle:SetStartSize(20.5870467639842) 
			particle:SetEndSize(0.012735977598182)
			particle:SetAngleVelocity( Angle(15) ) 
			particle:SetRoll(math.Rand( 0, 360 ))
			particle:SetColor(math.Rand(35,60), math.Rand(80,110), math.Rand(220,255))
			particle:SetGravity( Vector(0,0,0) ) 
			particle:SetAirResistance(-68.167394537726 )  
			particle:SetCollide(true)
			particle:SetBounce(0.1419790559388)
		end
	end
	
	local emitter2 = ParticleEmitter( Pos )
	
	for i = 1,24 do

		local particle2 = emitter2:Add( "effects/arc9ce/halo_spv3/energy/gooey", Pos + Vector( math.random(-6,6),math.random(-6,6),math.random(0,0))) 
		 
		if particle2 == nil then particle2 = emitter2:Add( "effects/arc9ce/halo_spv3/energy/gooey", Pos + Vector(   math.random(-6,6),math.random(-6,6),math.random(0,0) ) ) end
		
		if (particle2) then
			particle2:SetVelocity((-self.Normal+VectorRand() * 1):GetNormal() * math.Rand(100, 200));
			particle2:SetLifeTime(math.Rand(0.05, 1)) 
			particle2:SetDieTime(math.Rand(0.25,12)) 
			particle2:SetStartAlpha(math.Rand(100,200))
			particle2:SetEndAlpha(0)
			particle2:SetStartSize(math.Rand(0.5,2)) 
			particle2:SetEndSize(0)
			particle2:SetAngleVelocity( Angle(4.2934407040912,14.149586106307,0.18606363772742) ) 
			particle2:SetRoll(math.Rand( 0, 360 ))
			particle2:SetColor(math.Rand(35,60), math.Rand(80,110), math.Rand(220,255))
			particle2:SetGravity( Vector(0,0,-400) ) 
			particle2:SetAirResistance(0)  
			particle2:SetCollide(true)
			particle2:SetBounce(0)
		end
	end
	
	local emitter3 = ParticleEmitter( Pos )
	
	for i = 1,5 do

		local particle3 = emitter3:Add( "effects/arc9ce/halo_spv3/energy/gooey", Pos + Vector( math.random(-1,1),math.random(-1,1),math.random(0,0))) 
		 
		if particle3 == nil then particle3 = emitter3:Add( "effects/arc9ce/halo_spv3/energy/gooey", Pos + Vector(   math.random(-1,1),math.random(-1,1),math.random(0,0) ) ) end
		
		if (particle3) then
			particle3:SetVelocity((-self.Normal+VectorRand() * 1):GetNormal() * math.Rand(1, 10));
			particle3:SetLifeTime(math.Rand(0.05, 1)) 
			particle3:SetDieTime(3) 
			particle3:SetStartAlpha(math.Rand(50,100))
			particle3:SetEndAlpha(0)
			particle3:SetStartSize(math.Rand(15,25)) 
			particle3:SetEndSize(10)
			particle3:SetAngleVelocity( Angle(math.Rand(1,5),math.Rand(1,24),math.Rand(1,5)) ) 
			particle3:SetRoll(math.Rand( 0, 360 ))
			particle3:SetColor(math.Rand(35,60), math.Rand(80,110), math.Rand(220,255))
			particle3:SetGravity( Vector(0,0,0) ) 
			particle3:SetAirResistance(0)  
			particle3:SetCollide(true)
			particle3:SetBounce(0)
		end
	end

	emitter:Finish()
	emitter2:Finish()
	emitter3:Finish()
		
end

function EFFECT:Think()		
	return false
end

function EFFECT:Render()
end

function EFFECT:Think()

	self.LifeTime = self.LifeTime - FrameTime();
	return self.LifeTime > 0;

end

function EFFECT:Render()

	local frac = math.max( 0, self.LifeTime / self.Duration );
	local rgb = 255 * frac;
	local a = 255 * frac;
	local color = Color( math.Rand(160,170), math.Rand(160,170), math.Rand(230,255), a );

	render.SetMaterial( MaterialGlow );
	render.DrawQuadEasy( self.Pos + self.DataNormal, self.DataNormal, self.Size, self.Size, color );

end
