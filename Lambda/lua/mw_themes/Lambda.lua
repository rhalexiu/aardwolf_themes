--[[
=================================================

Lambda v1 by Rhalexiu
based on the works of Valve software
--v1 02-18-26

if you're reading this and you enjoy this theme
write me a note
if you hate it
write me a note and tell me why (aint nothing but a heartache)

=================================================
]]
return {
   LOGO_OPACITY = 0.00,                    -- Main output background logo

   
   PRIMARY_BODY = 0x000000,              -- Background for main output and miniwindow main areas
   SECONDARY_BODY = 0x001b3f,              -- Secondary background color (color under the chat window tabs)
   BODY_TEXT = 0x0170FF,                   -- Body text of plugins

   TITLE_PADDING = 1,                      -- Padding around text in miniwindow titlebars

   -- buttons
   CLICKABLE = 0x001b3f,                   -- Button face
   CLICKABLE_HOVER = 0x0476f9,             -- Button face when hovering over it with mouse
   CLICKABLE_HOT = 0x034eb7,               -- Button face when it wants your attention
   CLICKABLE_TEXT = 0xc8c8c8,              -- Button text
   CLICKABLE_HOVER_TEXT = 0x4DB2D1,        -- Button text when hovering over it
   CLICKABLE_HOT_TEXT = 0x67b500,          -- Button text when it wants your attention

   -- for 3D surfaces
   THREE_D_GRADIENT = true,               -- Surface color gradient direction (or false)
   THREE_D_GRADIENT_FIRST = 0x001b3f,      -- Start color
   THREE_D_GRADIENT_SECOND = 0x00000,     -- End color
   THREE_D_GRADIENT_ONLY_IN_TITLE = false,  -- Only apply gradient in miniwindow titlebars

   THREE_D_HIGHLIGHT = 0x0476f9, --
   THREE_D_SOFTSHADOW = 0x024391,
   THREE_D_HARDSHADOW = 0x000000,
   THREE_D_SURFACE_DETAIL = 0x4DB2D1,      -- Contrasting details/text drawn on 3D surfaces, old color was 4A79F5

   -- for scrollbar background
   SCROLL_TRACK_COLOR1 = 0x034eb7,         -- Color of accent brush on scrollbar
   SCROLL_TRACK_COLOR2 = 0x0347A0,         -- Main color of scrollbar
   VERTICAL_TRACK_BRUSH = miniwin.brush_medium_pattern,  -- Scrollbar background texture

   DYNAMIC_BUTTON_PADDING = 20,            -- Padding around button text if button is dynamically sized to the text
   RESIZER_SIZE = 12,                      -- Miniwindow resizer

   -- bg_texture_function is optional to override the default behavior.
   -- See Pink_Neon.lua for a "glitter on black" variant.
   -- Just make sure to return the path to a valid png file.
   bg_texture_function = function()
      imgpath = GetInfo(66).."worlds/plugins/images/lambda/source.png"
      WindowCreate("lambda_bg",0,0,0,0,0,0,Theme.THREE_D_HIGHLIGHT)
      WindowLoadImage("lambda_bg", "lambda_texture", imgpath)
      local bw = WindowImageInfo("lambda_bg", "lambda_texture", 2)
      local bh = WindowImageInfo("lambda_bg", "lambda_texture", 3)
      WindowResize("lambda_bg", bw, bh, Theme.THREE_D_HIGHLIGHT)
      WindowDrawImage("lambda_bg","lambda_texture",0,0,0,0,1)
      WindowFilter("lambda_bg",0,0,0,0,10,32)
      WindowFilter("lambda_bg",0,0,0,0,13,16)

      imgpath = GetInfo(66).."worlds/plugins/images/lambda/bg.png"
      WindowWrite("lambda_bg",imgpath)
      
      return imgpath
   end
}