#!/bin/bash

figlet "CEK KHODAM" || lolcat
echo "Lukash Dukun"

# BAGIAN MENU
echo "ＭＥＮＵ"
echo "( 01 ) CEK KHODAM"
echo "( 02 ) CHAT OWN"
echo "( 03 ) EXIT"
echo "( 04 ) CEK JODOH"
read -p "============) Pilih: " pilih

# LOGIKA KHODAM
if [ "$pilih" -eq 1 ]; then
    read -p "Masukkan nama Anda untuk Cek Khodam: " nama
    echo "Mencari Khodam Untuk  $nama..."

    # DAFTAR KHODAM
    khodam_list=("Kucing tobrut" "Jin qorin" "Tikus Sixpack" "Nenek gayung" "Tuyul main PS5" "Kuntilanak Selfie" "Tuyul maling sempak" "Macan Kumbang"  "Kodok terbang" "Sapi pincang" "Pocong buntung" "Gendoruwo Imut")

    # MEMILIH RANDOM
    random_index=$((RANDOM % ${#khodam_list[@]}))
    khodam_terpilih="${khodam_list[$random_index]}"

    # HASIL
    echo "Khodam untuk $nama adalah: $khodam_terpilih"

elif [ "$pilih" -eq 2 ]; then
    xdg-open "https://wa.me/62895340517123"

elif [ "$pilih" -eq 3 ]; then
    echo "Keluar dari program. Terima kasih!"
    exit 0

elif [ "$pilih" -eq 4 ]; then
      read -p "Masukan nama untuk cek Jodoh: " nama
      echo "Mencari Jodoh untuk  $nama..."

     # JODOH LIST
     jodoh_list=("Freya" "Mimi peri" "Christy" "Online" "Popo" "Manusia silver" "Kezi" "Btr Nadine" "Ragil" "Betit" "Kity" "Mami kalbar")

     #  MEMILIH RANDOM
     random_index=$((RANDOM % ${#jodoh_list[@]}))
     jodoh_terpilih="${jodoh_list[$random_index]}"

     # HASIL
     echo "Jodoh untuk $nama adalah: $jodoh_terpilih"

else
    echo "Pilihan tidak valid, coba lagi"
fi
