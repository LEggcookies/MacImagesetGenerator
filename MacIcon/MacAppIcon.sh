#!/bin/bash

# 输入图像文件路径和输出文件夹路径
input_image="icon.png"
output_folder="./AppIcon"
json_file="./AppIcon/Contents.json"

# 创建输出文件夹
rm -r -f "$output_folder"
mkdir -p "$output_folder"

# 使用sips命令调整图像尺寸并保存为不同大小的图标文件
sips --resampleWidth 16 "$input_image" --out "$output_folder/macicon_16x16@1x.png"
sips --resampleWidth 32 "$input_image" --out "$output_folder/macicon_16x16@2x.png"
sips --resampleWidth 32 "$input_image" --out "$output_folder/macicon_32x32@1x.png"
sips --resampleWidth 64 "$input_image" --out "$output_folder/macicon_32x32@2x.png"
sips --resampleWidth 128 "$input_image" --out "$output_folder/macicon_128x128@1x.png"
sips --resampleWidth 256 "$input_image" --out "$output_folder/macicon_128x128@2x.png"
sips --resampleWidth 256 "$input_image" --out "$output_folder/macicon_256x256@1x.png"
sips --resampleWidth 512 "$input_image" --out "$output_folder/macicon_256x256@2x.png"
sips --resampleWidth 512 "$input_image" --out "$output_folder/macicon_512x512@1x.png"
sips --resampleWidth 1024 "$input_image" --out "$output_folder/macicon_512x512@2x.png"

# 生成Contents.json文件内容
echo '{
  "images" : [
    {
      "filename" : "macicon_16x16@1x.png",
      "idiom" : "mac",
      "scale" : "1x",
      "size" : "16x16"
    },
    {
      "filename" : "macicon_16x16@2x.png",
      "idiom" : "mac",
      "scale" : "2x",
      "size" : "16x16"
    },
    {
      "filename" : "macicon_32x32@1x.png",
      "idiom" : "mac",
      "scale" : "1x",
      "size" : "32x32"
    },
    {
      "filename" : "macicon_32x32@2x.png",
      "idiom" : "mac",
      "scale" : "2x",
      "size" : "32x32"
    },
    {
      "filename" : "macicon_128x128@1x.png",
      "idiom" : "mac",
      "scale" : "1x",
      "size" : "128x128"
    },
    {
      "filename" : "macicon_128x128@2x.png",
      "idiom" : "mac",
      "scale" : "2x",
      "size" : "128x128"
    },
    {
      "filename" : "macicon_256x256@1x.png",
      "idiom" : "mac",
      "scale" : "1x",
      "size" : "256x256"
    },
    {
      "filename" : "macicon_256x256@2x.png",
      "idiom" : "mac",
      "scale" : "2x",
      "size" : "256x256"
    },
    {
      "filename" : "macicon_512x512@1x.png",
      "idiom" : "mac",
      "scale" : "1x",
      "size" : "512x512"
    },
    {
      "filename" : "macicon_512x512@2x.png",
      "idiom" : "mac",
      "scale" : "2x",
      "size" : "512x512"
    }
  ],
  "info" : {
    "author" : "xcode",
    "version" : 1
  }
}' > "$json_file"
