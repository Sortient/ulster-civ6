--============================================--
--                                            --
--  Sortient_Ulster_LeaderAbility.lua         --
--  Created: 06/06/2024                       --             
--                                            --
--  Provides functionality for John Hume's    --
--  unique leader ability.                    --
--                                            --
--  Special thanks: sukritact                 --
--============================================--

print("   Running Sortient_Ulster_LeaderAbility.lua")

    -----------------------------------------
    -- GetPlayersWithTrait
    -----------------------------------------
      function GetPlayersWithTrait(sTrait)
        local tValid = {}
        iLength = 0

        for k, v in pairs(PlayerManager.GetWasEverAliveIDs()) do
          local leaderType = PlayerConfigurations[v]:GetLeaderTypeName()
          for trait in GameInfo.LeaderTraits() do
            if trait.LeaderType == leaderType and trait.TraitType == sTrait then
              tValid[v] = Players[v]
              iLength = iLength + 1
            end
          end
          if not tValid[v] then
            local civType = PlayerConfigurations[v]:GetCivilizationTypeName()
            for trait in GameInfo.CivilizationTraits() do
              if trait.CivilizationType == civType and trait.TraitType == sTrait then
                tValid[v] = Players[v]
                iLength = iLength + 1
              end
            end
          end
        end
        return tValid, iLength
      end

    -----------------------------------------
    -- NumberToBinaryTable
    -----------------------------------------
      function NumberToBinaryTable(iNum, iMax)

        assert(iNum >= 0, "number must be positive value")
        assert(iMax >= 0, "maximum must be positive value")

        iNum = math.floor(iNum) -- integers only!
        iNum = math.min(iNum, iMax)

        local iNumDigits = math.floor(math.log(iMax)/math.log(2)) + 1
        local tBinaryMap 	= {}
        for i = iNumDigits-1, 0, -1 do tBinaryMap[2^(i)] = 0 end
        local iCurPow		= 0
        ---------------------------
        repeat
          local iBitNum	= iNum % 2
          iNum			= (iNum - iBitNum)/2

          tBinaryMap[2^(iCurPow)] = iBitNum
          iCurPow = iCurPow + 1
        until (iNum == 0)
        ---------------------------
        return tBinaryMap
      end
    -----------------------------------------
    -- SetBinaryProperty
    -----------------------------------------
      function SetBinaryProperty(pObject, sPropertyTemplate, iNum, iMax)
        tBinaryMap = NumberToBinaryTable(iNum, iMax)

        for iBitVal, iBit in pairs(tBinaryMap) do
          local sProperty = string.format(sPropertyTemplate, iBitVal)
          --print(sProperty, iBit)
          pObject:SetProperty(sProperty, iBit)
        end
        print("Binary Map for ", iNum, ": ", tBinaryMap)
      end

    -----------------------------------------
    -- GetNumberOfReligiousFollowersInCity
    -- Based off sukritact's al-Andalus
    -----------------------------------------
      function IsReligionFoundedByPlayer(iPlayer, iReligion)
        local pPlayer = Players[iPlayer]
        if not pPlayer then
          print("Player not found!")
          return false
        end
        local pReligion = pPlayer:GetReligion()
        local religionToCheck = pReligion:GetReligionInMajorityOfCities()
        print("GFA - religion to check = ", religionToCheck, ", player religion = ", pReligion)
        return religionToCheck == iReligion
      end

      function GetNumberOfReligiousFollowersInCity(iPlayer, iCity)
        print("Calculating religions in city")
        local pCity = iPlayer
        if iCity then
          pCity = CityManager.GetCity(iPlayer, iCity)
        end
        if not pCity then return end
        
        local pCityReligion = pCity:GetReligion()
        if not pCityReligion then return end

        local tReligions = Game.GetReligion():GetReligions()
        local iNumReligionsInCity = 0

        if #tReligions < 1 then return -1 end

        for _, tReligion in pairs(tReligions) do
          local iReligion = tReligion.Religion
          local iNumFollowers = pCityReligion:GetNumFollowers(iReligion)

          if iNumFollowers > 0 then
            if not IsReligionFoundedByPlayer(iPlayer, iReligion) then
              print("GFA - religion ", iReligion, " is a foreign religion.")
              
              iNumReligionsInCity = iNumReligionsInCity + 1
            end
          end
        end

        print("GFA - Number of foreign religions in ", pCity:GetName(), ": ", iNumReligionsInCity)
        return iNumReligionsInCity
      end

      function OnCityReligionFollowersChanged(iPlayer, iCity)
        if not g_Players_GoodFridayAgreement[iPlayer] then return end

        local pCity = CityManager.GetCity(iPlayer, iCity)
        if not pCity then return end

        iReligionsInCity = GetNumberOfReligiousFollowersInCity(iPlayer, iCity)
        local pPlot = pCity:GetPlot()
        SetBinaryProperty(pPlot, g_GoodFridayAgreement_Key, iReligionsInCity, g_GoodFridayAgreement_Max)
      end

-- global variables
g_GFATrait = "TRAIT_LEADER_SORTIENT_GOOD_FRIDAY_AGREEMENT"
g_Players_GoodFridayAgreement, g_NumPlayers_GoodFridayAgreement = GetPlayersWithTrait(g_GFATrait)
g_GoodFridayAgreement_Key				= "SORTIENT_GOOD_FRIDAY_AGREEMENT_%d"
g_GoodFridayAgreement_Max				= 15

if g_NumPlayers_GoodFridayAgreement < 1 then
  print("    No Ulster Players Found.")
  return
end

Events.CityReligionFollowersChanged.Add(OnCityReligionFollowersChanged)