#!/bin/bash

# Buat fungsi untuk melakukan komit dengan tanggal tertentu
function make_commit {
    for i in $(seq 1 $2); do
        touch "file_$1_$i.txt"  # Buat file sementara untuk setiap komit
        git add "file_$1_$i.txt"
        git commit --date="$3" -m "$1 part $i"
    done
}

# Set tanggal komit
date1="2024-02-01"  # Ganti dengan tanggal yang diinginkan

# Lakukan komit untuk setiap huruf
make_commit "J" 5 "$date1"
make_commit "o" 5 "$date1"
make_commit "O" 5 "$date1"
make_commit "f" 5 "$date1"
make_commit "f" 5 "$date1"
make_commit "l" 3 "$date1"
make_commit "i" 3 "$date1"
make_commit "n" 3 "$date1"
make_commit "e" 3 "$date1"

git add .            # Menambahkan semua file yang baru dibuat ke staging area
git commit -m "Push semua perubahan untuk grafik kontribusi JoOffline" # Komit perubahan
git push origin main # Push ke branch main di remote repository