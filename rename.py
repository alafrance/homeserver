import os
import re

dir = '/mnt/all/config/qbittorrent_downloads/tv-sonarr/[Judas] Boku no Hero Academia (Season 2) [BD 1080p][Dual-Audio][Eng-Sub]'
# pattern = re.compile(r"\.1080p\.WEBRip\.x265-RARBG\[eztv\.re\]")
new_dir = '/mnt/all/Movies/Anime/My Hero Academia/Season 2'

for filename in os.listdir(dir):
    old_path = os.path.join(dir, filename)
    parts = filename.split(" - ")
    number = parts[1].split(".mkv")
    new_path = os.path.join(new_dir, f"Boky no Hero Academia S02E{number[0]} (2014).mkv")
    os.rename(old_path, new_path)

# def get_before_second_dot(s):
#     parts = s.split(".")  # Sépare la chaîne par les points
#     if len(parts) < 3:  # S'il n'y a pas deux points, retourner la chaîne entière
#         return s
#     return " ".join(parts[:2])  # Joindre les deux premières parties

# for sub_dir in os.listdir(os.path.join(dir, "Subs")):
#     for filename in os.listdir(os.path.join(dir, "Subs", sub_dir)):
#         if filename == "16_French.srt":
#             old_path = os.path.join(dir, "Subs", sub_dir, filename)
#             new_filename = get_before_second_dot(sub_dir) + ".fr.srt"
#             new_path = os.path.join(new_dir, new_filename)
#             # print(f"Renommé : {filename} → {new_filename}")
#             os.rename(old_path, new_path)