#!/bin/bash
# Generate placeholder SVG images for TOUR-AFRIC website

# Function to create SVG placeholder
create_placeholder() {
    local filename=$1
    local text=$2
    local width=${3:-800}
    local height=${4:-600}
    
    cat > "$filename" << SVG_END
<svg width="$width" height="$height" xmlns="http://www.w3.org/2000/svg">
  <rect width="$width" height="$height" fill="#F5E8D0"/>
  <text x="50%" y="50%" font-family="Arial, sans-serif" font-size="24" fill="#0B3B24" text-anchor="middle" dominant-baseline="middle">$text</text>
</svg>
SVG_END
}

# Hero images
create_placeholder "hero-ghana-landscape.jpg" "Ghana Landscape - Hero Image" 1920 1080
create_placeholder "hero-ghana-coast.jpg" "Ghana Coastline - Hero Image" 1920 1080

# Adventure images
create_placeholder "adventure-mole-national-park.jpg" "Mole National Park" 800 600
create_placeholder "mole-national-park.jpg" "Mole Safari Experience" 800 600
create_placeholder "kakum-canopy-walk.jpg" "Kakum Canopy Walk" 800 600
create_placeholder "volta-mountains.jpg" "Volta Mountain Treks" 800 600
create_placeholder "shai-hills.jpg" "Shai Hills Reserve" 800 600
create_placeholder "tafi-atome-monkeys.jpg" "Tafi Atome Monkey Sanctuary" 800 600
create_placeholder "lake-bosomtwe.jpg" "Lake Bosomtwe" 800 600
create_placeholder "wli-waterfalls.jpg" "Wli Waterfalls" 800 600
create_placeholder "boti-falls.jpg" "Boti Falls" 800 600
create_placeholder "aburi-gardens.jpg" "Aburi Botanical Gardens" 800 600

# Coastal images
create_placeholder "coastal-cape-coast.jpg" "Cape Coast Beach" 800 600
create_placeholder "cape-coast-castle.jpg" "Cape Coast Castle" 800 600
create_placeholder "ada-foah-estuary.jpg" "Ada Foah Estuary" 800 600
create_placeholder "busua-surf.jpg" "Busua Beach Surfing" 800 600
create_placeholder "nzulezu-stilt-village.jpg" "Nzulezu Stilt Village" 800 600
create_placeholder "kokrobite-beach.jpg" "Kokrobite Beach" 800 600
create_placeholder "sao-tome-island.jpg" "São Tomé Island" 800 600

# Impact images
create_placeholder "mole-rangers.jpg" "Mole Park Rangers" 800 600
create_placeholder "kakum-guides.jpg" "Kakum Community Guides" 800 600
create_placeholder "ada-mangroves.jpg" "Ada Mangrove Restoration" 800 600
create_placeholder "guide-kofi.jpg" "Guide Kofi Mensah" 400 400
create_placeholder "elder-ama.jpg" "Elder Ama Tetteh" 400 400
create_placeholder "ranger-kwame.jpg" "Ranger Kwame Asante" 400 400

echo "Placeholder images created successfully!"
