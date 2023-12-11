.class public Lcom/samsung/android/media/codec/ImgCsConverter;
.super Ljava/lang/Object;
.source "ImgCsConverter.java"


# static fields
.field public static AllExifTags:[Ljava/lang/String; = null

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "ImgCsConverter"


# direct methods
.method static constructor <clinit>()V
    .registers 138

    .line 22
    const-string v0, "ImgCsConverter"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/media/codec/ImgCsConverter;->DEBUG:Z

    .line 25
    const-string v1, "ApertureValue"

    const-string v2, "Artist"

    const-string v3, "BitsPerSample"

    const-string v4, "BrightnessValue"

    const-string v5, "CFAPattern"

    const-string v6, "ColorSpace"

    const-string v7, "ComponentsConfiguration"

    const-string v8, "CompressedBitsPerPixel"

    const-string v9, "Compression"

    const-string v10, "Contrast"

    const-string v11, "Copyright"

    const-string v12, "CustomRendered"

    const-string v13, "DateTime"

    const-string v14, "DateTimeDigitized"

    const-string v15, "DateTimeOriginal"

    const-string v16, "DefaultCropSize"

    const-string v17, "DeviceSettingDescription"

    const-string v18, "DigitalZoomRatio"

    const-string v19, "DNGVersion"

    const-string v20, "ExifVersion"

    const-string v21, "ExposureBiasValue"

    const-string v22, "ExposureIndex"

    const-string v23, "ExposureMode"

    const-string v24, "ExposureProgram"

    const-string v25, "ExposureTime"

    const-string v26, "FileSource"

    const-string v27, "Flash"

    const-string v28, "FlashpixVersion"

    const-string v29, "FlashEnergy"

    const-string v30, "FocalLength"

    const-string v31, "FocalLengthIn35mmFilm"

    const-string v32, "FocalPlaneResolutionUnit"

    const-string v33, "FocalPlaneXResolution"

    const-string v34, "FocalPlaneYResolution"

    const-string v35, "FNumber"

    const-string v36, "GainControl"

    const-string v37, "GPSAltitude"

    const-string v38, "GPSAltitudeRef"

    const-string v39, "GPSAreaInformation"

    const-string v40, "GPSDateStamp"

    const-string v41, "GPSDestBearing"

    const-string v42, "GPSDestBearingRef"

    const-string v43, "GPSDestDistance"

    const-string v44, "GPSDestDistanceRef"

    const-string v45, "GPSDestLatitude"

    const-string v46, "GPSDestLatitudeRef"

    const-string v47, "GPSDestLongitude"

    const-string v48, "GPSDestLongitudeRef"

    const-string v49, "GPSDifferential"

    const-string v50, "GPSDOP"

    const-string v51, "GPSImgDirection"

    const-string v52, "GPSImgDirectionRef"

    const-string v53, "GPSLatitude"

    const-string v54, "GPSLatitudeRef"

    const-string v55, "GPSLongitude"

    const-string v56, "GPSLongitudeRef"

    const-string v57, "GPSMapDatum"

    const-string v58, "GPSMeasureMode"

    const-string v59, "GPSProcessingMethod"

    const-string v60, "GPSSatellites"

    const-string v61, "GPSSpeed"

    const-string v62, "GPSSpeedRef"

    const-string v63, "GPSStatus"

    const-string v64, "GPSTimeStamp"

    const-string v65, "GPSTrack"

    const-string v66, "GPSTrackRef"

    const-string v67, "GPSVersionID"

    const-string v68, "ImageDescription"

    const-string v69, "ImageLength"

    const-string v70, "ImageUniqueID"

    const-string v71, "ImageWidth"

    const-string v72, "InteroperabilityIndex"

    const-string v73, "ISOSpeedRatings"

    const-string v74, "LightSource"

    const-string v75, "Make"

    const-string v76, "MakerNote"

    const-string v77, "MaxApertureValue"

    const-string v78, "MeteringMode"

    const-string v79, "Model"

    const-string v80, "NewSubfileType"

    const-string v81, "OECF"

    const-string v82, "AspectFrame"

    const-string v83, "PreviewImageLength"

    const-string v84, "PreviewImageStart"

    const-string v85, "ThumbnailImage"

    const-string v86, "Orientation"

    const-string v87, "PhotometricInterpretation"

    const-string v88, "PixelXDimension"

    const-string v89, "PixelYDimension"

    const-string v90, "PlanarConfiguration"

    const-string v91, "PrimaryChromaticities"

    const-string v92, "ReferenceBlackWhite"

    const-string v93, "RelatedSoundFile"

    const-string v94, "ResolutionUnit"

    const-string v95, "RowsPerStrip"

    const-string v96, "ISO"

    const-string v97, "JpgFromRaw"

    const-string v98, "SensorBottomBorder"

    const-string v99, "SensorLeftBorder"

    const-string v100, "SensorRightBorder"

    const-string v101, "SensorTopBorder"

    const-string v102, "SamplesPerPixel"

    const-string v103, "Saturation"

    const-string v104, "SceneCaptureType"

    const-string v105, "SceneType"

    const-string v106, "SensingMethod"

    const-string v107, "Sharpness"

    const-string v108, "ShutterSpeedValue"

    const-string v109, "Software"

    const-string v110, "SpatialFrequencyResponse"

    const-string v111, "SpectralSensitivity"

    const-string v112, "StripByteCounts"

    const-string v113, "StripOffsets"

    const-string v114, "SubfileType"

    const-string v115, "SubjectArea"

    const-string v116, "SubjectDistance"

    const-string v117, "SubjectDistanceRange"

    const-string v118, "SubjectLocation"

    const-string v119, "SubSecTime"

    const-string v120, "SubSecTimeDigitized"

    const-string v121, "SubSecTimeDigitized"

    const-string v122, "SubSecTimeOriginal"

    const-string v123, "SubSecTimeOriginal"

    const-string v124, "ThumbnailImageLength"

    const-string v125, "ThumbnailImageWidth"

    const-string v126, "TransferFunction"

    const-string v127, "UserComment"

    const-string v128, "WhiteBalance"

    const-string v129, "WhitePoint"

    const-string v130, "XResolution"

    const-string v131, "YCbCrCoefficients"

    const-string v132, "YCbCrPositioning"

    const-string v133, "YCbCrSubSampling"

    const-string v134, "YResolution"

    const-string v135, "OffsetTimeOriginal"

    const-string v136, "OffsetTime"

    const-string v137, "OffsetTimeDigitized"

    filled-new-array/range {v1 .. v137}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/codec/ImgCsConverter;->AllExifTags:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convert(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorSpace;)Z
    .registers 19
    .param p0, "inputFilePath"    # Ljava/lang/String;
    .param p1, "outputFilePath"    # Ljava/lang/String;
    .param p2, "colorspace"    # Landroid/graphics/ColorSpace;

    .line 170
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string/jumbo v0, "java.io.tmpdir"

    const-string v3, "convert"

    const-string v4, "ImgCsConverter"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    if-eqz v1, :cond_13d

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_13d

    .line 174
    if-eqz v2, :cond_132

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_132

    .line 178
    const/4 v3, 0x1

    .line 179
    .local v3, "ret":Z
    const/4 v5, 0x0

    .line 180
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 184
    .local v6, "out":Ljava/io/FileOutputStream;
    :try_start_21
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 186
    .local v7, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x1

    iput v8, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_29
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_29} :catch_102
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_29} :catch_e7
    .catchall {:try_start_21 .. :try_end_29} :catchall_e2

    .line 187
    move-object/from16 v8, p2

    :try_start_2b
    iput-object v8, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    .line 189
    invoke-static {v1, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    move-object v5, v9

    .line 190
    if-nez v5, :cond_4d

    .line 191
    const-string v0, "decode fail"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_39} :catch_e0
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_39} :catch_de
    .catchall {:try_start_2b .. :try_end_39} :catchall_11e

    .line 192
    nop

    .line 252
    if-eqz v5, :cond_3f

    .line 253
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 255
    :cond_3f
    if-eqz v6, :cond_4b

    .line 257
    :try_start_41
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_44
    .catch Ljava/lang/RuntimeException; {:try_start_41 .. :try_end_44} :catch_47
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_45

    .line 261
    goto :goto_4b

    .line 260
    :catch_45
    move-exception v0

    goto :goto_4b

    .line 258
    :catch_47
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 259
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 192
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :cond_4b
    :goto_4b
    const/4 v0, 0x0

    return v0

    .line 194
    :cond_4d
    :try_start_4d
    const-string v9, "dec x"

    invoke-static {v4, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v6, v9

    .line 198
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x5f

    invoke-virtual {v5, v9, v10, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 199
    const-string v9, "enc x"

    invoke-static {v4, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v9, Landroid/media/ExifInterface;

    invoke-direct {v9, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 203
    .local v9, "inExif":Landroid/media/ExifInterface;
    new-instance v10, Landroid/media/ExifInterface;

    invoke-direct {v10, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 205
    .local v10, "outExif":Landroid/media/ExifInterface;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_6f
    sget-object v12, Lcom/samsung/android/media/codec/ImgCsConverter;->AllExifTags:[Ljava/lang/String;

    array-length v13, v12

    if-ge v11, v13, :cond_86

    .line 206
    aget-object v12, v12, v11

    invoke-virtual {v9, v12}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 207
    .local v12, "value":Ljava/lang/String;
    if-eqz v12, :cond_83

    .line 208
    sget-object v13, Lcom/samsung/android/media/codec/ImgCsConverter;->AllExifTags:[Ljava/lang/String;

    aget-object v13, v13, v11

    invoke-virtual {v10, v13, v12}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .end local v12    # "value":Ljava/lang/String;
    :cond_83
    add-int/lit8 v11, v11, 0x1

    goto :goto_6f

    .line 212
    .end local v11    # "i":I
    :cond_86
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    .local v11, "src_sefFile":Ljava/io/File;
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 215
    .local v12, "dst_sefFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v13

    .line 216
    .local v13, "outDir":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " outDir : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 219
    .local v14, "tmpdir":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " tmpdir : "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-static {v0, v13}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 222
    invoke-virtual {v10}, Landroid/media/ExifInterface;->saveAttributes()V

    .line 224
    invoke-static {v0, v14}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_cd
    .catch Ljava/lang/RuntimeException; {:try_start_4d .. :try_end_cd} :catch_e0
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_cd} :catch_de
    .catchall {:try_start_4d .. :try_end_cd} :catchall_11e

    .line 252
    nop

    .end local v7    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v9    # "inExif":Landroid/media/ExifInterface;
    .end local v10    # "outExif":Landroid/media/ExifInterface;
    .end local v11    # "src_sefFile":Ljava/io/File;
    .end local v12    # "dst_sefFile":Ljava/io/File;
    .end local v13    # "outDir":Ljava/lang/String;
    .end local v14    # "tmpdir":Ljava/lang/String;
    if-eqz v5, :cond_d3

    .line 253
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 255
    :cond_d3
    nop

    .line 257
    :try_start_d4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_d7
    .catch Ljava/lang/RuntimeException; {:try_start_d4 .. :try_end_d7} :catch_da
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_d7} :catch_d8

    .line 261
    :goto_d7
    goto :goto_11d

    .line 260
    :catch_d8
    move-exception v0

    goto :goto_d7

    .line 258
    :catch_da
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 259
    .restart local v0    # "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 247
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :catch_de
    move-exception v0

    goto :goto_ea

    .line 242
    :catch_e0
    move-exception v0

    goto :goto_105

    .line 252
    :catchall_e2
    move-exception v0

    move-object/from16 v8, p2

    :goto_e5
    move-object v1, v0

    goto :goto_120

    .line 247
    :catch_e7
    move-exception v0

    move-object/from16 v8, p2

    .line 248
    .local v0, "e":Ljava/lang/Exception;
    :goto_ea
    :try_start_ea
    const-string v1, " Exception "

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f2
    .catchall {:try_start_ea .. :try_end_f2} :catchall_11e

    .line 250
    const/4 v3, 0x0

    .line 252
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v5, :cond_f8

    .line 253
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 255
    :cond_f8
    if-eqz v6, :cond_11d

    .line 257
    :try_start_fa
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_fd
    .catch Ljava/lang/RuntimeException; {:try_start_fa .. :try_end_fd} :catch_fe
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_fd} :catch_d8

    goto :goto_d7

    .line 258
    :catch_fe
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 259
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 242
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :catch_102
    move-exception v0

    move-object/from16 v8, p2

    .line 243
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_105
    :try_start_105
    const-string v1, " RuntimeException "

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_10d
    .catchall {:try_start_105 .. :try_end_10d} :catchall_11e

    .line 246
    const/4 v3, 0x0

    .line 252
    .end local v0    # "e":Ljava/lang/RuntimeException;
    if-eqz v5, :cond_113

    .line 253
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 255
    :cond_113
    if-eqz v6, :cond_11d

    .line 257
    :try_start_115
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_118
    .catch Ljava/lang/RuntimeException; {:try_start_115 .. :try_end_118} :catch_119
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_118} :catch_d8

    goto :goto_d7

    .line 258
    :catch_119
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 259
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 264
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :cond_11d
    :goto_11d
    return v3

    .line 252
    :catchall_11e
    move-exception v0

    goto :goto_e5

    :goto_120
    if-eqz v5, :cond_125

    .line 253
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 255
    :cond_125
    if-eqz v6, :cond_131

    .line 257
    :try_start_127
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_12a
    .catch Ljava/lang/RuntimeException; {:try_start_127 .. :try_end_12a} :catch_12d
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_12a} :catch_12b

    .line 261
    goto :goto_131

    .line 260
    :catch_12b
    move-exception v0

    goto :goto_131

    .line 258
    :catch_12d
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 259
    .restart local v0    # "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 263
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :cond_131
    :goto_131
    throw v1

    .line 174
    .end local v3    # "ret":Z
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "out":Ljava/io/FileOutputStream;
    :cond_132
    move-object/from16 v8, p2

    .line 175
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "outputFilePath cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_13d
    move-object/from16 v8, p2

    .line 172
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "inputFilePath cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static convertToSRGB(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "inputFilePath"    # Ljava/lang/String;
    .param p1, "outputFilePath"    # Ljava/lang/String;

    .line 166
    const-string v0, "ImgCsConverter"

    const-string v1, "convertToSRGB"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/media/codec/ImgCsConverter;->convert(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorSpace;)Z

    move-result v0

    return v0
.end method
