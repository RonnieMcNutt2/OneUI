.class public Lcom/samsung/android/app/SemWallpaperUtils;
.super Ljava/lang/Object;
.source "SemWallpaperUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static decodeFileConsiderQMG(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;

    .line 79
    const/4 v0, 0x0

    .line 81
    .local v0, "fis":Ljava/io/InputStream;
    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 82
    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/SemWallpaperUtils;->decodeStreamConsiderQMG(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_c} :catch_18
    .catchall {:try_start_2 .. :try_end_c} :catchall_16

    .line 86
    nop

    .line 88
    :try_start_d
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_11

    .line 91
    goto :goto_15

    .line 89
    :catch_11
    move-exception v2

    .line 90
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 82
    .end local v2    # "e":Ljava/io/IOException;
    :goto_15
    return-object v1

    .line 86
    :catchall_16
    move-exception v1

    goto :goto_28

    .line 83
    :catch_18
    move-exception v2

    .line 84
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_19
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_16

    .line 86
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    if-eqz v0, :cond_27

    .line 88
    :try_start_1e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_22

    .line 91
    :goto_21
    goto :goto_27

    .line 89
    :catch_22
    move-exception v2

    .line 90
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_21

    .line 94
    :cond_27
    :goto_27
    return-object v1

    .line 86
    :goto_28
    if-eqz v0, :cond_32

    .line 88
    :try_start_2a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2e

    .line 91
    goto :goto_32

    .line 89
    :catch_2e
    move-exception v2

    .line 90
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 93
    .end local v2    # "e":Ljava/io/IOException;
    :cond_32
    :goto_32
    throw v1
.end method

.method public static decodeStreamConsiderQMG(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 11
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "result":Landroid/graphics/Bitmap;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 104
    .local v1, "bis":Ljava/io/BufferedInputStream;
    invoke-static {v1}, Lcom/samsung/android/app/SemWallpaperUtils;->isQMG(Ljava/io/BufferedInputStream;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 106
    :try_start_c
    const-string v2, "android.graphics.BitmapFactory"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 107
    .local v2, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "decodeStreamQMG"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/io/InputStream;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/graphics/Rect;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-class v5, Landroid/graphics/BitmapFactory$Options;

    const/4 v7, 0x2

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 109
    .local v3, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v3, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 110
    filled-new-array {v1, p1, p2}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;
    :try_end_38
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_38} :catch_3f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_38} :catch_3a

    move-object v0, v4

    .end local v2    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    goto :goto_44

    .line 113
    :catch_3a
    move-exception v2

    .line 114
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_44

    .line 111
    :catch_3f
    move-exception v2

    .line 112
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {v1, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 115
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :goto_44
    goto :goto_49

    .line 117
    :cond_45
    invoke-static {v1, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 119
    :goto_49
    return-object v0
.end method

.method private static isQMG(Ljava/io/BufferedInputStream;)Z
    .registers 4
    .param p0, "bis"    # Ljava/io/BufferedInputStream;

    .line 161
    if-eqz p0, :cond_20

    .line 162
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 164
    :try_start_6
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    .line 165
    .local v0, "byte1":I
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v1

    .line 166
    .local v1, "byte2":I
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->reset()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_11} :catch_1c

    .line 168
    const/16 v2, 0x51

    if-ne v0, v2, :cond_1b

    const/16 v2, 0x47

    if-ne v1, v2, :cond_1b

    .line 169
    const/4 v2, 0x1

    return v2

    .line 173
    .end local v0    # "byte1":I
    .end local v1    # "byte2":I
    :cond_1b
    goto :goto_20

    .line 171
    :catch_1c
    move-exception v0

    .line 172
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 175
    .end local v0    # "e":Ljava/io/IOException;
    :cond_20
    :goto_20
    const/4 v0, 0x0

    return v0
.end method

.method public static newRegionDecoder(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;
    .registers 12
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "isShareable"    # Z

    .line 126
    const/4 v0, 0x0

    .line 128
    .local v0, "bis":Ljava/io/BufferedInputStream;
    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v2

    .line 129
    const/4 v2, 0x0

    .line 130
    .local v2, "decoder":Landroid/graphics/BitmapRegionDecoder;
    invoke-static {v0}, Lcom/samsung/android/app/SemWallpaperUtils;->isQMG(Ljava/io/BufferedInputStream;)Z

    move-result v3
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_61
    .catchall {:try_start_2 .. :try_end_12} :catchall_5f

    if-eqz v3, :cond_4f

    .line 132
    :try_start_14
    const-string v3, "android.graphics.BitmapRegionDecoder"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 133
    .local v3, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v4, "newInstanceQMG"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/io/InputStream;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x1

    aput-object v7, v6, v9

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 134
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v4, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 135
    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v8

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/BitmapRegionDecoder;
    :try_end_41
    .catch Ljava/lang/NoSuchMethodException; {:try_start_14 .. :try_end_41} :catch_48
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_41} :catch_43
    .catchall {:try_start_14 .. :try_end_41} :catchall_5f

    move-object v2, v5

    goto :goto_4e

    .line 138
    .end local v3    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :catch_43
    move-exception v3

    .line 139
    .local v3, "e":Ljava/lang/Exception;
    :try_start_44
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_4e

    .line 136
    :catch_48
    move-exception v3

    .line 137
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {v0, p1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v1

    move-object v2, v1

    .line 140
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :goto_4e
    goto :goto_54

    .line 142
    :cond_4f
    invoke-static {v0, p1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v1
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_53} :catch_61
    .catchall {:try_start_44 .. :try_end_53} :catchall_5f

    move-object v2, v1

    .line 144
    :goto_54
    nop

    .line 148
    nop

    .line 150
    :try_start_56
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_59} :catch_5a

    .line 153
    goto :goto_5e

    .line 151
    :catch_5a
    move-exception v1

    .line 152
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 144
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_5e
    return-object v2

    .line 148
    .end local v2    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    :catchall_5f
    move-exception v1

    goto :goto_71

    .line 145
    :catch_61
    move-exception v2

    .line 146
    .local v2, "e":Ljava/lang/Exception;
    :try_start_62
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_5f

    .line 148
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_70

    .line 150
    :try_start_67
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6a} :catch_6b

    .line 153
    :goto_6a
    goto :goto_70

    .line 151
    :catch_6b
    move-exception v2

    .line 152
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_6a

    .line 157
    :cond_70
    :goto_70
    return-object v1

    .line 148
    :goto_71
    if-eqz v0, :cond_7b

    .line 150
    :try_start_73
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_76} :catch_77

    .line 153
    goto :goto_7b

    .line 151
    :catch_77
    move-exception v2

    .line 152
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 155
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7b
    :goto_7b
    throw v1
.end method

.method public static startBackup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pathValue"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 57
    new-instance v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;

    invoke-direct {v0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;-><init>()V

    .line 58
    .local v0, "wallpaperBackupRestoreManager":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;
    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->startBackupWallpaper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static startRestore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pathValue"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 71
    new-instance v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;

    invoke-direct {v0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;-><init>()V

    .line 72
    .local v0, "wallpaperBackupRestoreManager":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;
    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->startRestoreWallpaper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method
