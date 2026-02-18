--[[
=================================================

Polendina v1 by Rhalexiu
based on the works of Monty Oum
--v1 02-18-26

if you're reading this and you enjoy this theme
write me a note
if you hate it
write me a note and tell me why (aint nothing but a heartache)

=================================================
]]
return {
   LOGO_OPACITY = 0.05,                    -- Main output background logo

   PRIMARY_BODY = 0x14190f,                -- Background for main output and miniwindow main areas
   SECONDARY_BODY = 0x466400,              -- Secondary background color (color under the chat window tabs)
   BODY_TEXT = 0x7cc400,                   -- Body text of plugins

   TITLE_PADDING = 2,                      -- Padding around text in miniwindow titlebars

   -- buttons
   CLICKABLE = 0x568500,                   -- Button face
   CLICKABLE_HOVER = 0x67b500,             -- Button face when hovering over it with mouse
   CLICKABLE_HOT = 0x4A79F5,               -- Button face when it wants your attention
   CLICKABLE_TEXT = 0xc8c8c8,              -- Button text
   CLICKABLE_HOVER_TEXT = 0xffffff,        -- Button text when hovering over it
   CLICKABLE_HOT_TEXT = 0x67b500,          -- Button text when it wants your attention

   -- for 3D surfaces
   THREE_D_GRADIENT = miniwin.gradient_horizontal,               -- Surface color gradient direction (or false)
   THREE_D_GRADIENT_FIRST = 0x77BC00,      -- Start color
   THREE_D_GRADIENT_SECOND = 0x568500,     -- End color
   THREE_D_GRADIENT_ONLY_IN_TITLE = false,  -- Only apply gradient in miniwindow titlebars

   THREE_D_HIGHLIGHT = 0x90FF00,
   THREE_D_SOFTSHADOW = 0x67b500,
   THREE_D_HARDSHADOW = 0x1E3800,
   THREE_D_SURFACE_DETAIL = 0x4DB2D1,      -- Contrasting details/text drawn on 3D surfaces, old color was 4A79F5

   -- for scrollbar background
   SCROLL_TRACK_COLOR1 = 0x557A00,         -- Color of accent brush on scrollbar
   SCROLL_TRACK_COLOR2 = 0x466400,         -- Main color of scrollbar
   VERTICAL_TRACK_BRUSH = miniwin.brush_hatch_vertical,  -- Scrollbar background texture

   DYNAMIC_BUTTON_PADDING = 20,            -- Padding around button text if button is dynamically sized to the text
   RESIZER_SIZE = 14,                      -- Miniwindow resizer

   -- bg_texture_function is optional to override the default behavior.
   -- See Pink_Neon.lua for a "glitter on black" variant.
   -- Just make sure to return the path to a valid png file.
   bg_texture_function = function()
      --return GetInfo(66).."worlds/plugins/images/polendina/source.png"
      imgpath = GetInfo(66).."worlds/plugins/images/polendina/source.png"

      WindowCreate("polendina_background",0,0,0,0,0,0, Theme.THREE_D_HIGHLIGHT)
      WindowLoadImage("polendina_background", "polendina_background_texture", imgpath)
      local bw = WindowImageInfo("polendina_background", "polendina_background_texture", 2)
      local bh = WindowImageInfo("polendina_background", "polendina_background_texture", 3)
      WindowResize("polendina_background", bw * 2, bh * 2, Theme.THREE_D_HIGHLIGHT)
      WindowImageFromWindow("polendina_background", "polendina_theme_bg", "polendina_background")

      WindowDrawImage("polendina_background", "polendina_background_texture", 0,0,0,0,2)
      WindowFilter("polendina_background",0,0,0,0,9,1.15)

      imgpath = GetInfo(66).."worlds/plugins/images/polendina/bg.png"
      WindowWrite("polendina_background", imgpath)

      return imgpath

   end
}