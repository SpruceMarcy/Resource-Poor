do
    local oldModBlueprints = ModBlueprints

    function ModBlueprints(all_bps)
	    oldModBlueprints(all_bps)

        local econScale = 0.1
        
        --loop through the blueprints and adjust as desired.
        for id,bp in all_bps.Unit do
            if bp.Economy.ProductionPerSecondMass then
               bp.Economy.ProductionPerSecondMass = bp.Economy.ProductionPerSecondMass * econScale
            end
            if bp.Economy.ProductionPerSecondEnergy then
               bp.Economy.ProductionPerSecondEnergy = bp.Economy.ProductionPerSecondEnergy * econScale
            end  
        end
    end

end
