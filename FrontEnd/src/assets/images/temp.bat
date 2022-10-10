#!/bin/bash

#Convert all images to 500x500 px
convert HinduLit_PodcastBanner.jpg -geometry 500x500 HinduLit_PodcastBanner_500x500.jpg
convert HinduLit_PodcastBanner.png -geometry 500x500 HinduLit_PodcastBanner_500x500.png
convert HinduLit_PodcastBanner_Website.jpg -geometry 500x500 HinduLit_PodcastBanner_Website_500x500.jpg
convert HinduLit_PodcastBanner_Website.png -geometry 500x500 HinduLit_PodcastBanner_Website_500x500.png
convert Podcast1_Picture.jpg -geometry 500x500 Podcast1_Picture_500x500.jpg
convert Podcast2_Picture.jpg -geometry 500x500 Podcast2_Picture_500x500.jpg
convert Podcast3_Picture.jpg -geometry 500x500 Podcast3_Picture_500x500.jpg
convert Podcast4_Picture.jpg -geometry 500x500 Podcast4_Picture_500x500.jpg
convert Podcast5_Picture.jpg -geometry 500x500 Podcast5_Picture_500x500.jpg
convert Podcast6_Picture.jpg -geometry 500x500 Podcast6_Picture_500x500.jpg
convert Podcast7_Picture.jpg -geometry 500x500 Podcast7_Picture_500x500.jpg
convert Podcast8_Picture.jpg -geometry 500x500 Podcast8_Picture_500x500.jpg
convert Podcast9_Picture.jpg -geometry 500x500 Podcast9_Picture_500x500.jpg
convert Podcast10_Picture.jpg -geometry 500x500 Podcast10_Picture_500x500.jpg
convert Podcast11_Picture.jpg -geometry 500x500 Podcast11_Picture_500x500.jpg
convert Podcast12_Picture.jpg -geometry 500x500 Podcast12_Picture_500x500.jpg
convert Podcast13_Picture.jpg -geometry 500x500 Podcast13_Picture_500x500.jpg
convert Podcast14_Picture.jpg -geometry 500x500 Podcast14_Picture_500x500.jpg
convert Podcast15_Picture.jpg -geometry 500x500 Podcast15_Picture_500x500.jpg
convert Podcast16_Picture.jpg -geometry 500x500 Podcast16_Picture_500x500.jpg
convert Podcast17_Picture.jpg -geometry 500x500 Podcast17_Picture_500x500.jpg
convert Podcast18_Picture.jpg -geometry 500x500 Podcast18_Picture_500x500.jpg
convert Podcast19_Picture.jpg -geometry 500x500 Podcast19_Picture_500x500.jpg
convert Podcast20_Picture.jpg -geometry 500x500 Podcast20_Picture_500x500.jpg
convert Podcast21_Picture.jpg -geometry 500x500 Podcast21_Picture_500x500.jpg
convert Podcast22_Picture.jpg -geometry 500x500 Podcast22_Picture_500x500.jpg
convert Podcast23_Picture.jpg -geometry 500x500 Podcast23_Picture_500x500.jpg

convert HinduLit_PodcastBanner.jpg -geometry 400x400 HinduLit_PodcastBanner_TwitterProfile.jpg
convert HinduLit_PodcastBanner.jpg -geometry 400x400 HinduLit_PodcastBanner_LinkedInProfile.jpg
#convert HinduLit_PodcastBanner.jpg -geometry 1400x1400 HinduLit_PodcastBanner_ItunesProfile.jpg

#Create a banner style image for use in audio player
convert Podcast1_Picture.jpg -crop 3000x1000+0+1000 Podcast1_Banner.jpg
convert Podcast2_Picture.jpg -crop 3000x1000+0+1000 Podcast2_Banner.jpg
convert Podcast3_Picture.jpg -crop 3000x1000+0+1000 Podcast3_Banner.jpg
convert Podcast4_Picture.jpg -crop 3000x1000+0+1000 Podcast4_Banner.jpg
convert Podcast5_Picture.jpg -crop 3000x1000+0+1000 Podcast5_Banner.jpg
convert Podcast6_Picture.jpg -crop 3000x1000+0+1000 Podcast6_Banner.jpg
convert Podcast7_Picture.jpg -crop 3000x1000+0+1000 Podcast7_Banner.jpg
convert Podcast8_Picture.jpg -crop 3000x1000+0+1000 Podcast8_Banner.jpg
convert Podcast9_Picture.jpg -crop 3000x1000+0+1000 Podcast9_Banner.jpg
convert Podcast10_Picture.jpg -crop 3000x1000+0+1000 Podcast10_Banner.jpg
convert Podcast11_Picture.jpg -crop 3000x1000+0+1000 Podcast11_Banner.jpg
convert Podcast12_Picture.jpg -crop 3000x1000+0+1000 Podcast12_Banner.jpg
convert Podcast13_Picture.jpg -crop 3000x1000+0+1000 Podcast13_Banner.jpg
convert Podcast14_Picture.jpg -crop 3000x1000+0+1000 Podcast14_Banner.jpg
convert Podcast15_Picture.jpg -crop 3000x1000+0+1000 Podcast15_Banner.jpg
convert Podcast16_Picture.jpg -crop 3000x1000+0+1000 Podcast16_Banner.jpg
convert Podcast17_Picture.jpg -crop 3000x1000+0+1000 Podcast17_Banner.jpg
convert Podcast18_Picture.jpg -crop 3000x1000+0+1000 Podcast18_Banner.jpg
convert Podcast19_Picture.jpg -crop 3000x1000+0+1000 Podcast19_Banner.jpg
convert Podcast20_Picture.jpg -crop 3000x1000+0+1000 Podcast20_Banner.jpg
convert Podcast21_Picture.jpg -crop 3000x1000+0+1000 Podcast21_Banner.jpg
convert Podcast22_Picture.jpg -crop 3000x1000+0+1000 Podcast22_Banner.jpg
convert Podcast23_Picture.jpg -crop 3000x1000+0+1000 Podcast23_Banner.jpg

convert indiaMap.jpg -geometry 992x1172 indiaMap_992x1172.jpg 
convert indiaMapWithCaricatures.jpg -geometry 992x1172 indiaMapWithCaricatures_992x1172.jpg 

#small images for attribution page
convert LittleIndia_KL.jpg -resize 15% LittleIndia_attr.jpg 
convert BatuCaves_Krishna.jpg -resize 5% BatuCaves_Krishna_attr.jpg 

convert LittleIndia_KL.jpg -geometry 2-48x1152 LittleIndia_YoutubeBanner.jpg
#1464x827

#Create favicon.ico
convert Podcast23_Picture.jpg -geometry 16x16 favicon.ico
#Create itunes profile
#convert Podcast11_Picture.png -geometry 1400x1400 HinduLit_PodcastBanner_ItunesProfile.jpg

#EOF
