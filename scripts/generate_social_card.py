"""Generate a 1200x630 social sharing card matching the site's design system."""
from pathlib import Path

from PIL import Image, ImageDraw, ImageFont, ImageOps

SITE = str(Path(__file__).resolve().parent.parent)

BG = "#f8f9f6"        # $background-color
BRAND = "#1d6340"     # $brand-color
ACCENT = "#b8870b"    # $accent-color (decorative use only)
TEXT = "#111111"      # $text-color
GREY = "#3f3f3f"
GREY_LIGHT = "#595959"
RING = "#8adcb3"      # ~lighten($brand-color, 45%), echoes the site's photo border

W, H = 1200, 630

def font(path_candidates, size, index=0):
    for p in path_candidates:
        try:
            return ImageFont.truetype(p, size, index=index)
        except OSError:
            continue
    raise SystemExit(f"No usable font found in {path_candidates}")

bold_paths = ["/System/Library/Fonts/Supplemental/Arial Bold.ttf",
              "/Library/Fonts/Arial Bold.ttf"]
reg_paths = ["/System/Library/Fonts/Supplemental/Arial.ttf",
             "/Library/Fonts/Arial.ttf"]

f_name = font(bold_paths, 76)
f_role = font(bold_paths, 42)
f_tag = font(reg_paths, 30)
f_meta = font(reg_paths, 28)

img = Image.new("RGB", (W, H), BG)
draw = ImageDraw.Draw(img)

# Top brand bar, echoing the site header's border-top
draw.rectangle([0, 0, W, 10], fill=BRAND)

# Circular headshot with light-green ring
SIZE = 340
photo = Image.open(f"{SITE}/assets/profile.jpeg").convert("RGB")
photo = ImageOps.fit(photo, (SIZE, SIZE), Image.LANCZOS)
mask = Image.new("L", (SIZE * 4, SIZE * 4), 0)
ImageDraw.Draw(mask).ellipse([0, 0, SIZE * 4, SIZE * 4], fill=255)
mask = mask.resize((SIZE, SIZE), Image.LANCZOS)
px, py = 105, (H - SIZE) // 2 + 5
img.paste(photo, (px, py), mask)
draw.ellipse([px - 5, py - 5, px + SIZE + 5, py + SIZE + 5], outline=RING, width=7)

# Text block
tx = 540
y = 190
draw.text((tx, y), "Nikos Vasileiadis", font=f_name, fill=TEXT)
y += 100
draw.text((tx, y), "Software Engineering Leader", font=f_role, fill=BRAND)
y += 78
# Gold accent rule, echoing the site's pull-quote / divider treatment
draw.rectangle([tx + 2, y, tx + 82, y + 6], fill=ACCENT)
y += 36
draw.text((tx, y), "People, Platform & Organisational Design", font=f_tag, fill=GREY)
y += 52
draw.text((tx, y), "Leeds, UK  ·  nvasileiadis.github.io", font=f_meta, fill=GREY_LIGHT)

img.save(f"{SITE}/assets/social-card.jpg", quality=88, optimize=True)
print("saved", img.size)
