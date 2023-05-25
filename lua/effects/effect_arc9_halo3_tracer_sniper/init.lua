local Tracer = Material( "effects/arc9ce/halo3/trail/wispy_trail" )
local Tracer2  = Material( "effects/arc9ce/halo3/trail/flaming_trail" )
local Tracer3  = Material( "effects/arc9ce/halo3/trail/flaming_trail" )
local Width = 16
local Width2 = 8
local Width3 = 1

function EFFECT:Init( data )

	self.Position = data:GetStart()
	self.EndPos = data:GetOrigin()
	self.WeaponEnt = data:GetEntity()
	self.Attachment = data:GetAttachment()
	self.StartPos = self:GetTracerShootPos( self.Position, self.WeaponEnt, self.Attachment )
	self:SetRenderBoundsWS( self.StartPos, self.EndPos )

	self.Dir = ( self.EndPos - self.StartPos ):GetNormalized()
	self.Dist = self.StartPos:Distance( self.EndPos )
	
	self.LifeTime = 1.4
	self.LifeTime2 = 0.9
	self.LifeTime3 = 2.5
	self.DieTime = CurTime() + self.LifeTime
	self.DieTime2 = CurTime() + self.LifeTime2
	self.DieTime3 = CurTime() + self.LifeTime3

end

function EFFECT:Think()

	if ( CurTime() == self.DieTime ) then return false end
	return true

end

function EFFECT:Render()

	local r = 255
	local g = 255
	local b = 255
	
	local v = ( self.DieTime - CurTime() ) / self.LifeTime
	
	local v2 = ( self.DieTime2 - CurTime() ) / self.LifeTime2
	
	local v3 = ( self.DieTime3 - CurTime() ) / self.LifeTime3

	render.SetMaterial( Tracer )
	render.DrawBeam( self.StartPos, self.EndPos, (v * Width)*3/2, 0, (self.Dist/20)*math.Rand(-0.1,0.1), Color( 255, 255, 255, v * 155 ) )
	
	render.SetMaterial( Tracer2 )
	render.DrawBeam( self.StartPos, self.EndPos, (v2 * Width2)*2/2, 0, (self.Dist/1)*math.Rand(-0.1,0.1), Color( 255, 255, 255, (v2 * 100)*3/2.5 ) )
	
	render.SetMaterial( Tracer3 )
	render.DrawBeam( self.StartPos, self.EndPos, (v3 * Width3)*2/2, 0, (self.Dist/1)*math.Rand(-0.1,0.1), Color( 255, 255, 255, v3 * 25 ) )

end
