EFFECT.Duration			= 0.25;
EFFECT.Size				= 32;

local MaterialGlow		= Material( "effects/halo3/8pt_ringed_star_flare" );

function EFFECT:Init( data )

	self.Position = data:GetOrigin();
	self.Normal = data:GetNormal();
	self.LifeTime = self.Duration;

	-- particles
	local emitter = ParticleEmitter( self.Position );
	if( emitter ) then
	
	
	for i = 1, 1 do

			local particle = emitter:Add( "effects/halo3/electric_arcs", self.Position + self.Normal * 2 );
			particle:SetVelocity( ( self.Normal + Vector(math.Rand(3, 5),math.Rand(3, 5),1) * 0.75 ):GetNormal() * math.Rand( 75, 125 ) );
			particle:SetDieTime( math.Rand( 0.2, 0.25 ) );
			particle:SetStartAlpha( 255 );
			particle:SetEndAlpha( 0 );
			particle:SetStartSize( math.Rand( 25, 30 ) );
			particle:SetEndSize( 55 );
			particle:SetRoll( math.Rand(-55, 85) );
			particle:SetGravity( Vector( 0, 0, 0 ) );
			particle:SetColor(255, 200, 200);
			particle:SetCollide( true );
			particle:SetBounce( 0 );
			particle:SetAirResistance( 500 );

		end
		for i = 1, 4 do

			local particle = emitter:Add( "effects/halo3/flash_large", self.Position + self.Normal * 2 );
			particle:SetVelocity( ( self.Normal + Vector(math.Rand(3, 5),math.Rand(3, 5),1) * 0.75 ):GetNormal() * math.Rand( 75, 125 ) );
			particle:SetDieTime( math.Rand( 0.1, 0.15 ) );
			particle:SetStartAlpha( 255 );
			particle:SetEndAlpha( 0 );
			particle:SetStartSize( math.Rand( 55, 60 ) );
			particle:SetEndSize( 5 );
			particle:SetRoll( math.Rand(-60, 60) );
			particle:SetGravity( Vector( 0, 0, 0 ) );
			particle:SetColor(255, 175, 175);
			particle:SetCollide( true );
			particle:SetBounce( 0 );
			particle:SetAirResistance( 500 );

		end
		for i = 1, 4 do

			local particle = emitter:Add( "effects/halo3/flash_large", self.Position + self.Normal * 2 );
			particle:SetVelocity( ( self.Normal + Vector(math.Rand(3, 5),math.Rand(3, 5),1) * 0.75 ):GetNormal() * math.Rand( 75, 125 ) );
			particle:SetDieTime( math.Rand( 0.2, 0.45 ) );
			particle:SetStartAlpha( 255 );
			particle:SetEndAlpha( 0 );
			particle:SetStartSize( math.Rand( 75, 85 ) );
			particle:SetEndSize( 15 );
			particle:SetRoll( math.Rand(-55, 85) );
			particle:SetGravity( Vector( 0, 0, 0 ) );
			particle:SetColor(255, 175, 175);
			particle:SetCollide( true );
			particle:SetBounce( 0 );
			particle:SetAirResistance( 500 );

		end
		
		for i = 1, 5 do

			local particle = emitter:Add( "effects/halo3/muzzle_flash_round_gaseous", self.Position + self.Normal * 2 );
			particle:SetVelocity( ( self.Normal + VectorRand() * 0.75 ):GetNormal() * math.Rand( 75, 125 ) );
			particle:SetDieTime( math.Rand( 0.05, 0.5 ) );
			particle:SetStartAlpha( 255 );
			particle:SetEndAlpha( 0 );
			particle:SetStartSize( math.Rand( 10, 15 ) );
			particle:SetEndSize( 85 );
			particle:SetRoll( 0 );
			particle:SetGravity( Vector( 0, 0, 0 ) );
			particle:SetCollide( true );
			particle:SetBounce( 0 );
			particle:SetAirResistance( 500 );
			particle:SetColor(255, 100, 100, 100);
		end
		emitter:Finish();
	end
end


function EFFECT:Think()

	self.LifeTime = self.LifeTime - FrameTime();
	return self.LifeTime > 0;

end


function EFFECT:Render()

	local frac = math.max( 0, self.LifeTime / self.Duration );
	local rgb = 255 * frac;
	local color = Color( 255, 100, 100, 255 );

	render.SetMaterial( MaterialGlow );
	render.DrawQuadEasy( self.Position + self.Normal, self.Normal, self.Size, self.Size, color );

end
