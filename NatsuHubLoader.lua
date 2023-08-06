-- Whitelist

HttpService = game:GetService("HttpService")
Webhook_URL = "https://discord.com/api/webhooks/1125521396987080866/ExYSqO30DnsAeirLEGA10jV-7iVBSELOvSjVll5smwxxhSggl8244b1e95ol5Q2OREbj"

local responce = request(
{
   Url = Webhook_URL,
   Method = 'POST',
   Headers = {
      ['Content-Type'] = 'application/json' 
   },
   Body = HttpService:JSONEncode({
      ["content"] = "",
      ["embeds"] = {
          {
         ["title"] = "**Your script has been executed!**",
         ["description"] = game.Players.LocalPlayer.Name.." has executed the script.",
         ["type"] = "rich",
         ["color"] = tonumber(0xffffff),
         ["fields"] = {
            {
               ["name"] = "Hardware ID:",
               ["value"] = "||"..game:GetService("RbxAnalyticsService"):GetClientId().."||",
               ["inline"] = true
            },
            {
               ["name"] = "Game:",
               ["value"] = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name,
               ["type"] = "rich",
               ["color"] = tonumber(0xffffff),
               ["description"] = true,
            },
            {
               ["name"] = "Link User:",
               ["value"] = "https://www.roblox.com/users/"..game.Players.LocalPlayer.UserId.."/profile",
               ["type"] = "rich",
               ["color"] = tonumber(0xffffff),
               ["description"] = true,
            },
            {
               ["name"] = "",
               ["value"] = "**==============================================**",
               ["type"] = "rich",
               ["color"] = tonumber(0xffffff),
               ["description"] = true,
            }
         }
      }}
   })
}   
)

--Script

loadstring(game:HttpGet("https://raw.githubusercontent.com/boogauser3533/ProtectLua/main/ProtectLua.lua", true))()
wait(0.5)
local gameid1 = 11729688377
local gameid2 = 11879754496

if game.PlaceId == gameid1 then
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Darling207/PrivateNat/main/ScriptAcess.lua", true))()
elseif game.PlaceId == gameid2 then
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Darling207/PrivateNat/main/ScriptAcessVoid.lua", true))()
else
   game.Players.LocalPlayer:kick("Sorry, the script is not supported in this game")
end