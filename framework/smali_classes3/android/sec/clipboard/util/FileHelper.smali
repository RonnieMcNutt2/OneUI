.class public Landroid/sec/clipboard/util/FileHelper;
.super Ljava/lang/Object;
.source "FileHelper.java"


# static fields
.field private static final BASE_64_ENCODING:Ljava/lang/String; = ";base64"

.field private static final LENGTH_CONTENT_URI:I

.field private static final LENGTH_HTTPS_URL:I

.field private static final LENGTH_HTTP_URL:I

.field private static final PREFIX_CONTENT_URI:Ljava/lang/String; = "content://"

.field private static final PREFIX_DATA:Ljava/lang/String; = "data:"

.field private static final PREFIX_FILE:Ljava/lang/String; = "file://"

.field private static final PREFIX_HTTPS_URL:Ljava/lang/String; = "https://"

.field private static final PREFIX_HTTP_URL:Ljava/lang/String; = "http://"

.field private static final PREFIX_STORAGE:Ljava/lang/String; = "storage/emulated/"

.field private static final TAG:Ljava/lang/String; = "FileHelper"

.field private static instance:Landroid/sec/clipboard/util/FileHelper;


# instance fields
.field private NullFile:Ljava/io/File;

.field private loadMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    new-instance v0, Landroid/sec/clipboard/util/FileHelper;

    invoke-direct {v0}, Landroid/sec/clipboard/util/FileHelper;-><init>()V

    sput-object v0, Landroid/sec/clipboard/util/FileHelper;->instance:Landroid/sec/clipboard/util/FileHelper;

    .line 64
    const-string/jumbo v0, "http://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Landroid/sec/clipboard/util/FileHelper;->LENGTH_HTTP_URL:I

    .line 65
    const-string/jumbo v0, "https://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Landroid/sec/clipboard/util/FileHelper;->LENGTH_HTTPS_URL:I

    .line 66
    const-string v0, "content://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Landroid/sec/clipboard/util/FileHelper;->LENGTH_CONTENT_URI:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/io/File;

    const-string v1, "_TEMP_FILE"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/sec/clipboard/util/FileHelper;->NullFile:Ljava/io/File;

    .line 68
    const-string/jumbo v0, "load success"

    iput-object v0, p0, Landroid/sec/clipboard/util/FileHelper;->loadMessage:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Landroid/sec/clipboard/util/FileHelper;
    .registers 1

    .line 71
    sget-object v0, Landroid/sec/clipboard/util/FileHelper;->instance:Landroid/sec/clipboard/util/FileHelper;

    return-object v0
.end method


# virtual methods
.method public checkFile(Ljava/io/File;)Z
    .registers 3
    .param p1, "file"    # Ljava/io/File;

    .line 578
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0
.end method

.method public createThumnailFromData(Landroid/content/Context;Lcom/samsung/android/content/clipboard/data/SemClipData;)Ljava/lang/String;
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clip"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .line 260
    const/4 v0, 0x0

    const-string v1, "FileHelper"

    if-nez p1, :cond_b

    .line 261
    const-string v2, "createThumnailFromData(): context is null!"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-object v0

    .line 267
    :cond_b
    const/16 v2, 0x180

    .line 268
    .local v2, "thumbImageWidth":I
    const/16 v3, 0x180

    .line 271
    .local v3, "thumbImageHeight":I
    :try_start_f
    invoke-static {p1}, Landroid/sec/clipboard/util/ClipboardDataBitmapUtil;->getThumbReqWidth(Landroid/content/Context;)I

    move-result v4

    move v2, v4

    .line 272
    invoke-static {p1}, Landroid/sec/clipboard/util/ClipboardDataBitmapUtil;->getThumbReqHeigth(Landroid/content/Context;)I

    move-result v4
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_18} :catch_1a

    move v3, v4

    .line 275
    goto :goto_1e

    .line 273
    :catch_1a
    move-exception v4

    .line 274
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 277
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1e
    if-eqz p2, :cond_18c

    .line 278
    invoke-virtual {p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_171

    .line 279
    move-object v4, p2

    check-cast v4, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    .line 289
    .local v4, "htmlClip":Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;
    const-string v6, "Create preview image for html data in createThumnailFromData()"

    invoke-static {v1, v6}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/4 v6, 0x0

    .line 291
    .local v6, "bm":Landroid/graphics/Bitmap;
    const-string v7, ""

    .line 293
    .local v7, "sFileName":Ljava/lang/String;
    :try_start_32
    invoke-virtual {v4}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getHtml()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/sec/clipboard/util/ClipboardProcText;->getImgFileNameFromHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 296
    invoke-static {v7}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 297
    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_48} :catch_4a

    move-object v7, v8

    .line 300
    goto :goto_4e

    .line 298
    :catch_4a
    move-exception v8

    .line 299
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 302
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_4e
    if-eqz v7, :cond_16b

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-ge v8, v9, :cond_59

    goto/16 :goto_16b

    .line 307
    :cond_59
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "name = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    .line 310
    .local v8, "length":I
    const-string v9, "data:"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a9

    .line 311
    const/16 v1, 0x2c

    invoke-virtual {v7, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 312
    .local v1, "index":I
    if-lez v1, :cond_a8

    if-ge v1, v8, :cond_a8

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v10, ";base64"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a8

    .line 313
    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 314
    .local v9, "decodedString":[B
    invoke-static {v9, v5}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v5

    .line 315
    .end local v9    # "decodedString":[B
    .local v5, "decodedString":[B
    invoke-static {v5, v2, v3}, Landroid/sec/clipboard/util/ClipboardDataBitmapUtil;->getResizeBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 317
    .end local v1    # "index":I
    .end local v5    # "decodedString":[B
    :cond_a8
    goto :goto_11c

    .line 318
    :cond_a9
    sget v5, Landroid/sec/clipboard/util/FileHelper;->LENGTH_HTTP_URL:I

    const/4 v9, 0x0

    if-le v8, v5, :cond_bb

    invoke-virtual {v7, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v10, "http://"

    invoke-virtual {v5, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_cc

    :cond_bb
    sget v5, Landroid/sec/clipboard/util/FileHelper;->LENGTH_HTTPS_URL:I

    if-le v8, v5, :cond_f7

    .line 319
    invoke-virtual {v7, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v10, "https://"

    invoke-virtual {v5, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_f7

    .line 320
    :cond_cc
    const-string v5, "downloadSimpleBitmap"

    invoke-static {v1, v5}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :try_start_d1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "html : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getHtml()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-static {v7, v2, v3}, Landroid/sec/clipboard/util/ClipboardDataBitmapUtil;->downloadSimpleBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_f0} :catch_f2

    move-object v6, v1

    .line 328
    goto :goto_11c

    .line 325
    :catch_f2
    move-exception v1

    .line 326
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 327
    return-object v0

    .line 330
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_f7
    sget v5, Landroid/sec/clipboard/util/FileHelper;->LENGTH_CONTENT_URI:I

    if-le v8, v5, :cond_116

    invoke-virtual {v7, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v9, "content://"

    invoke-virtual {v5, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_116

    .line 331
    const-string/jumbo v5, "getUriPathBitmap..."

    invoke-static {v1, v5}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 333
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {p1, v1, v2, v3}, Landroid/sec/clipboard/util/ClipboardDataBitmapUtil;->getUriPathBitmap(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 334
    .end local v1    # "uri":Landroid/net/Uri;
    goto :goto_11c

    .line 335
    :cond_116
    const-string/jumbo v5, "invalid data"

    invoke-static {v1, v5}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :goto_11c
    if-eqz v6, :cond_16a

    .line 340
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/semclipboard/temp/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 341
    .local v0, "tempFolder":Ljava/io/File;
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/sec/clipboard/util/FileHelper;->makeDir(Ljava/io/File;)V

    .line 343
    new-instance v5, Ljava/io/File;

    const-string/jumbo v9, "previewhtmlclipboarditem"

    invoke-direct {v5, v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v5

    .line 344
    .local v1, "createFile":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "_thum.jpg"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 346
    .local v5, "thumbFullPath":Ljava/lang/String;
    :try_start_148
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_14d
    .catch Ljava/lang/Exception; {:try_start_148 .. :try_end_14d} :catch_162

    .line 347
    .local v9, "fos":Ljava/io/FileOutputStream;
    :try_start_14d
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v6, v10, v11, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_154
    .catchall {:try_start_14d .. :try_end_154} :catchall_158

    .line 348
    :try_start_154
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_157
    .catch Ljava/lang/Exception; {:try_start_154 .. :try_end_157} :catch_162

    .line 350
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    goto :goto_166

    .line 346
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :catchall_158
    move-exception v10

    :try_start_159
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_15c
    .catchall {:try_start_159 .. :try_end_15c} :catchall_15d

    goto :goto_161

    :catchall_15d
    move-exception v11

    :try_start_15e
    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "tempFolder":Ljava/io/File;
    .end local v1    # "createFile":Ljava/io/File;
    .end local v2    # "thumbImageWidth":I
    .end local v3    # "thumbImageHeight":I
    .end local v4    # "htmlClip":Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;
    .end local v5    # "thumbFullPath":Ljava/lang/String;
    .end local v6    # "bm":Landroid/graphics/Bitmap;
    .end local v7    # "sFileName":Ljava/lang/String;
    .end local v8    # "length":I
    .end local p0    # "this":Landroid/sec/clipboard/util/FileHelper;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "clip":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :goto_161
    throw v10
    :try_end_162
    .catch Ljava/lang/Exception; {:try_start_15e .. :try_end_162} :catch_162

    .line 348
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "tempFolder":Ljava/io/File;
    .restart local v1    # "createFile":Ljava/io/File;
    .restart local v2    # "thumbImageWidth":I
    .restart local v3    # "thumbImageHeight":I
    .restart local v4    # "htmlClip":Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;
    .restart local v5    # "thumbFullPath":Ljava/lang/String;
    .restart local v6    # "bm":Landroid/graphics/Bitmap;
    .restart local v7    # "sFileName":Ljava/lang/String;
    .restart local v8    # "length":I
    .restart local p0    # "this":Landroid/sec/clipboard/util/FileHelper;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "clip":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :catch_162
    move-exception v9

    .line 349
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 352
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_166
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 353
    return-object v5

    .line 355
    .end local v0    # "tempFolder":Ljava/io/File;
    .end local v1    # "createFile":Ljava/io/File;
    .end local v5    # "thumbFullPath":Ljava/lang/String;
    :cond_16a
    return-object v0

    .line 303
    .end local v8    # "length":I
    :cond_16b
    :goto_16b
    const-string v5, "getFirstImage : FileName is empty."

    invoke-static {v1, v5}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    return-object v0

    .line 281
    .end local v4    # "htmlClip":Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;
    .end local v6    # "bm":Landroid/graphics/Bitmap;
    .end local v7    # "sFileName":Ljava/lang/String;
    :cond_171
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createThumnailFromData() is false because clip is not html type. clip.GetFomat() :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-object v0

    .line 285
    :cond_18c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createThumnailFromData() is false because clip is invalid data. clip :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return-object v0
.end method

.method public createThumnailFromUriData(Landroid/content/Context;Lcom/samsung/android/content/clipboard/data/SemUriClipData;)Ljava/lang/String;
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clip"    # Lcom/samsung/android/content/clipboard/data/SemUriClipData;

    .line 458
    const/4 v0, 0x0

    const-string v1, "FileHelper"

    if-nez p1, :cond_b

    .line 459
    const-string v2, "createThumnailFromUriData(): context is null!"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    return-object v0

    .line 465
    :cond_b
    const/16 v2, 0x180

    .line 466
    .local v2, "thumbImageWidth":I
    const/16 v3, 0x180

    .line 469
    .local v3, "thumbImageHeight":I
    :try_start_f
    invoke-static {p1}, Landroid/sec/clipboard/util/ClipboardDataBitmapUtil;->getThumbReqWidth(Landroid/content/Context;)I

    move-result v4

    move v2, v4

    .line 470
    invoke-static {p1}, Landroid/sec/clipboard/util/ClipboardDataBitmapUtil;->getThumbReqHeigth(Landroid/content/Context;)I

    move-result v4
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_18} :catch_1a

    move v3, v4

    .line 473
    goto :goto_1e

    .line 471
    :catch_1a
    move-exception v4

    .line 472
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 475
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1e
    if-eqz p2, :cond_142

    .line 476
    invoke-virtual {p2}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->getClipType()I

    move-result v4

    const/16 v5, 0x10

    if-ne v4, v5, :cond_127

    .line 477
    move-object v4, p2

    .line 487
    .local v4, "uriClip":Lcom/samsung/android/content/clipboard/data/SemUriClipData;
    const-string v5, "Create preview image for uri data in createThumnailFromData()"

    invoke-static {v1, v5}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const/4 v5, 0x0

    .line 490
    .local v5, "bm":Landroid/graphics/Bitmap;
    const-string v6, ""

    .line 492
    .local v6, "sFileName":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 493
    if-eqz v6, :cond_121

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ge v7, v8, :cond_44

    goto/16 :goto_121

    .line 498
    :cond_44
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    .line 500
    .local v7, "length":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "name = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const-string v8, "data:"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_95

    .line 503
    const/16 v1, 0x2c

    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 504
    .local v1, "index":I
    if-lez v1, :cond_94

    if-ge v1, v7, :cond_94

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v9, ";base64"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_94

    .line 505
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 506
    .local v8, "decodedString":[B
    const/4 v9, 0x4

    invoke-static {v8, v9}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v8

    .line 507
    invoke-static {v8, v2, v3}, Landroid/sec/clipboard/util/ClipboardDataBitmapUtil;->getResizeBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 509
    .end local v1    # "index":I
    .end local v8    # "decodedString":[B
    :cond_94
    goto :goto_d2

    :cond_95
    const-string/jumbo v8, "storage/emulated/"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_ce

    const-string v8, "file://"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a7

    goto :goto_ce

    .line 511
    :cond_a7
    sget v8, Landroid/sec/clipboard/util/FileHelper;->LENGTH_CONTENT_URI:I

    if-le v7, v8, :cond_c7

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v9, "content://"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_c7

    .line 512
    const-string/jumbo v8, "getUriPathBitmap..."

    invoke-static {v1, v8}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 514
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {p1, v1, v2, v3}, Landroid/sec/clipboard/util/ClipboardDataBitmapUtil;->getUriPathBitmap(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 515
    .end local v1    # "uri":Landroid/net/Uri;
    goto :goto_d2

    .line 516
    :cond_c7
    const-string/jumbo v8, "invalid data"

    invoke-static {v1, v8}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d2

    .line 510
    :cond_ce
    :goto_ce
    invoke-static {v6, v2, v3}, Landroid/sec/clipboard/util/ClipboardDataBitmapUtil;->getFilePathBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 519
    :goto_d2
    if-eqz v5, :cond_120

    .line 520
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/semclipboard/temp/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 521
    .local v0, "tempFolder":Ljava/io/File;
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/sec/clipboard/util/FileHelper;->makeDir(Ljava/io/File;)V

    .line 523
    new-instance v8, Ljava/io/File;

    const-string/jumbo v9, "previewhtmlclipboarditem"

    invoke-direct {v8, v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v8

    .line 524
    .local v1, "createFile":Ljava/io/File;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_thum.jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 525
    .local v8, "thumbFullPath":Ljava/lang/String;
    :try_start_fe
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_103} :catch_118

    .line 526
    .local v9, "fos":Ljava/io/FileOutputStream;
    :try_start_103
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v5, v10, v11, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_10a
    .catchall {:try_start_103 .. :try_end_10a} :catchall_10e

    .line 527
    :try_start_10a
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_10a .. :try_end_10d} :catch_118

    .line 529
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    goto :goto_11c

    .line 525
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :catchall_10e
    move-exception v10

    :try_start_10f
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_112
    .catchall {:try_start_10f .. :try_end_112} :catchall_113

    goto :goto_117

    :catchall_113
    move-exception v11

    :try_start_114
    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "tempFolder":Ljava/io/File;
    .end local v1    # "createFile":Ljava/io/File;
    .end local v2    # "thumbImageWidth":I
    .end local v3    # "thumbImageHeight":I
    .end local v4    # "uriClip":Lcom/samsung/android/content/clipboard/data/SemUriClipData;
    .end local v5    # "bm":Landroid/graphics/Bitmap;
    .end local v6    # "sFileName":Ljava/lang/String;
    .end local v7    # "length":I
    .end local v8    # "thumbFullPath":Ljava/lang/String;
    .end local p0    # "this":Landroid/sec/clipboard/util/FileHelper;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "clip":Lcom/samsung/android/content/clipboard/data/SemUriClipData;
    :goto_117
    throw v10
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_118} :catch_118

    .line 527
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "tempFolder":Ljava/io/File;
    .restart local v1    # "createFile":Ljava/io/File;
    .restart local v2    # "thumbImageWidth":I
    .restart local v3    # "thumbImageHeight":I
    .restart local v4    # "uriClip":Lcom/samsung/android/content/clipboard/data/SemUriClipData;
    .restart local v5    # "bm":Landroid/graphics/Bitmap;
    .restart local v6    # "sFileName":Ljava/lang/String;
    .restart local v7    # "length":I
    .restart local v8    # "thumbFullPath":Ljava/lang/String;
    .restart local p0    # "this":Landroid/sec/clipboard/util/FileHelper;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "clip":Lcom/samsung/android/content/clipboard/data/SemUriClipData;
    :catch_118
    move-exception v9

    .line 528
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 531
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_11c
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 532
    return-object v8

    .line 534
    .end local v0    # "tempFolder":Ljava/io/File;
    .end local v1    # "createFile":Ljava/io/File;
    .end local v8    # "thumbFullPath":Ljava/lang/String;
    :cond_120
    return-object v0

    .line 494
    .end local v7    # "length":I
    :cond_121
    :goto_121
    const-string v7, "getFirstImage : FileName is empty."

    invoke-static {v1, v7}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    return-object v0

    .line 479
    .end local v4    # "uriClip":Lcom/samsung/android/content/clipboard/data/SemUriClipData;
    .end local v5    # "bm":Landroid/graphics/Bitmap;
    .end local v6    # "sFileName":Ljava/lang/String;
    :cond_127
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createThumnailFromData() is false because clip is not uri type. clip.GetFomat() :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->getClipType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    return-object v0

    .line 483
    :cond_142
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createThumnailFromData() is false because clip is invalid data. clip :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    return-object v0
.end method

.method public delete(Ljava/io/File;)V
    .registers 6
    .param p1, "file"    # Ljava/io/File;

    .line 586
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 587
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 588
    return-void

    .line 591
    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 592
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 593
    .local v0, "list":[Ljava/io/File;
    if-eqz v0, :cond_25

    .line 594
    array-length v1, v0

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_22

    aget-object v3, v0, v2

    .line 595
    .local v3, "f":Ljava/io/File;
    invoke-virtual {p0, v3}, Landroid/sec/clipboard/util/FileHelper;->delete(Ljava/io/File;)V

    .line 594
    .end local v3    # "f":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 597
    :cond_22
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 600
    .end local v0    # "list":[Ljava/io/File;
    :cond_25
    return-void
.end method

.method public fileCopy(Landroid/os/ParcelFileDescriptor;Ljava/io/File;)Z
    .registers 16
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "dest"    # Ljava/io/File;

    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, "result":Z
    const/4 v1, 0x0

    .line 178
    .local v1, "inputStream":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 179
    .local v2, "outputStream":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 180
    .local v3, "fcin":Ljava/nio/channels/FileChannel;
    const/4 v4, 0x0

    .line 181
    .local v4, "fcout":Ljava/nio/channels/FileChannel;
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    .line 183
    .local v5, "fd":Ljava/io/FileDescriptor;
    :try_start_9
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 184
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1fd

    const/4 v8, -0x1

    invoke-static {v6, v7, v8, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 185
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v1, v6

    .line 186
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v6

    .line 187
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    move-object v3, v6

    .line 188
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    move-object v4, v6

    .line 189
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v10

    .line 190
    .local v10, "lSize":J
    const-wide/16 v8, 0x0

    move-object v7, v3

    move-object v12, v4

    invoke-virtual/range {v7 .. v12}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_37
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_37} :catch_75
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_37} :catch_50
    .catchall {:try_start_9 .. :try_end_37} :catchall_4e

    .line 191
    const/4 v0, 0x1

    .line 199
    .end local v10    # "lSize":J
    if-eqz v3, :cond_3d

    .line 200
    :try_start_3a
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 202
    :cond_3d
    if-eqz v4, :cond_42

    .line 203
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V

    .line 205
    :cond_42
    nop

    .line 206
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 208
    nop

    .line 209
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 212
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_4d} :catch_5a

    goto :goto_6e

    .line 198
    :catchall_4e
    move-exception v6

    goto :goto_9a

    .line 195
    :catch_50
    move-exception v6

    .line 196
    .local v6, "e":Ljava/io/IOException;
    :try_start_51
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_4e

    .line 199
    .end local v6    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_5c

    .line 200
    :try_start_56
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_5c

    .line 214
    :catch_5a
    move-exception v6

    goto :goto_70

    .line 202
    :cond_5c
    :goto_5c
    if-eqz v4, :cond_61

    .line 203
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V

    .line 205
    :cond_61
    if-eqz v1, :cond_66

    .line 206
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 208
    :cond_66
    if-eqz v2, :cond_6b

    .line 209
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 212
    :cond_6b
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_6e} :catch_5a

    .line 213
    :goto_6e
    const/4 p1, 0x0

    .line 216
    goto :goto_74

    .line 215
    .restart local v6    # "e":Ljava/io/IOException;
    :goto_70
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 217
    .end local v6    # "e":Ljava/io/IOException;
    nop

    .line 218
    :goto_74
    return v0

    .line 192
    :catch_75
    move-exception v6

    .line 193
    .local v6, "e":Ljava/io/FileNotFoundException;
    :try_start_76
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_4e

    .line 194
    nop

    .line 199
    if-eqz v3, :cond_82

    .line 200
    :try_start_7c
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_82

    .line 214
    :catch_80
    move-exception v7

    goto :goto_96

    .line 202
    :cond_82
    :goto_82
    if-eqz v4, :cond_87

    .line 203
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V

    .line 205
    :cond_87
    if-eqz v1, :cond_8c

    .line 206
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 208
    :cond_8c
    if-eqz v2, :cond_91

    .line 209
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 212
    :cond_91
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_94} :catch_80

    .line 213
    const/4 p1, 0x0

    .line 216
    goto :goto_99

    .line 215
    .local v7, "e":Ljava/io/IOException;
    :goto_96
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 194
    .end local v7    # "e":Ljava/io/IOException;
    :goto_99
    return v0

    .line 199
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    :goto_9a
    if-eqz v3, :cond_a2

    .line 200
    :try_start_9c
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_a2

    .line 214
    :catch_a0
    move-exception v7

    goto :goto_b6

    .line 202
    :cond_a2
    :goto_a2
    if-eqz v4, :cond_a7

    .line 203
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V

    .line 205
    :cond_a7
    if-eqz v1, :cond_ac

    .line 206
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 208
    :cond_ac
    if-eqz v2, :cond_b1

    .line 209
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 212
    :cond_b1
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_b4} :catch_a0

    .line 213
    const/4 p1, 0x0

    .line 216
    goto :goto_b9

    .line 215
    .restart local v7    # "e":Ljava/io/IOException;
    :goto_b6
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 217
    .end local v7    # "e":Ljava/io/IOException;
    :goto_b9
    throw v6
.end method

.method public fileCopy(Ljava/io/File;Ljava/io/File;)Z
    .registers 14
    .param p1, "src"    # Ljava/io/File;
    .param p2, "dest"    # Ljava/io/File;

    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "result":Z
    const/4 v1, 0x0

    .line 87
    .local v1, "inputStream":Ljava/io/FileInputStream;
    :try_start_2
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 88
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1fd

    const/4 v4, -0x1

    invoke-static {v2, v3, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 89
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_14} :catch_e3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_14} :catch_16

    move-object v1, v2

    .line 96
    goto :goto_1a

    .line 94
    :catch_16
    move-exception v2

    .line 95
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 99
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1a
    :try_start_1a
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1f} :catch_d2

    .line 110
    .local v2, "outputStream":Ljava/io/FileOutputStream;
    nop

    .line 112
    if-eqz v1, :cond_9d

    .line 129
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v9

    .line 130
    .local v9, "fcin":Ljava/nio/channels/FileChannel;
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v10

    .line 132
    .local v10, "fcout":Ljava/nio/channels/FileChannel;
    if-eqz v9, :cond_3f

    .line 133
    :try_start_2c
    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    .line 134
    .local v6, "lSize":J
    const-wide/16 v4, 0x0

    move-object v3, v9

    move-object v8, v10

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 135
    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_3f

    .line 153
    .end local v6    # "lSize":J
    :catchall_3b
    move-exception v3

    goto :goto_82

    .line 147
    :catch_3d
    move-exception v3

    goto :goto_69

    .line 137
    :cond_3f
    :goto_3f
    if-eqz v10, :cond_44

    .line 138
    invoke-virtual {v10}, Ljava/nio/channels/FileChannel;->close()V

    .line 140
    :cond_44
    nop

    .line 141
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 143
    if-eqz v1, :cond_4d

    .line 144
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_4d} :catch_3d
    .catchall {:try_start_2c .. :try_end_4d} :catchall_3b

    .line 146
    :cond_4d
    const/4 v0, 0x1

    .line 154
    if-eqz v9, :cond_56

    .line 155
    :try_start_50
    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_56

    .line 166
    :catch_54
    move-exception v3

    goto :goto_65

    .line 157
    :cond_56
    :goto_56
    if-eqz v10, :cond_5b

    .line 158
    invoke-virtual {v10}, Ljava/nio/channels/FileChannel;->close()V

    .line 160
    :cond_5b
    if-eqz v1, :cond_60

    .line 161
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 163
    :cond_60
    nop

    .line 164
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_64} :catch_54

    .line 168
    :goto_64
    goto :goto_81

    .line 167
    .local v3, "e":Ljava/io/IOException;
    :goto_65
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 169
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_81

    .line 148
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_69
    :try_start_69
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_3b

    .line 149
    const/4 v0, 0x0

    .line 154
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v9, :cond_72

    .line 155
    :try_start_6f
    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->close()V

    .line 157
    :cond_72
    if-eqz v10, :cond_77

    .line 158
    invoke-virtual {v10}, Ljava/nio/channels/FileChannel;->close()V

    .line 160
    :cond_77
    if-eqz v1, :cond_7c

    .line 161
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 163
    :cond_7c
    nop

    .line 164
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_80} :catch_54

    goto :goto_64

    .line 172
    :goto_81
    return v0

    .line 154
    :goto_82
    if-eqz v9, :cond_8a

    .line 155
    :try_start_84
    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_8a

    .line 166
    :catch_88
    move-exception v4

    goto :goto_99

    .line 157
    :cond_8a
    :goto_8a
    if-eqz v10, :cond_8f

    .line 158
    invoke-virtual {v10}, Ljava/nio/channels/FileChannel;->close()V

    .line 160
    :cond_8f
    if-eqz v1, :cond_94

    .line 161
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 163
    :cond_94
    nop

    .line 164
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_98} :catch_88

    .line 168
    goto :goto_9c

    .line 167
    .local v4, "e":Ljava/io/IOException;
    :goto_99
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 169
    .end local v4    # "e":Ljava/io/IOException;
    :goto_9c
    throw v3

    .line 113
    .end local v9    # "fcin":Ljava/nio/channels/FileChannel;
    .end local v10    # "fcout":Ljava/nio/channels/FileChannel;
    :cond_9d
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_c3

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "break fileCopy()...because of inputStream :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", or outputStream :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FileHelper"

    invoke-static {v4, v3}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_c3
    nop

    .line 118
    :try_start_c4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 120
    if-eqz v1, :cond_cc

    .line 121
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_cc
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_cc} :catch_cd

    .line 125
    :cond_cc
    goto :goto_d1

    .line 123
    :catch_cd
    move-exception v3

    .line 124
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 126
    .end local v3    # "e":Ljava/io/IOException;
    :goto_d1
    return v0

    .line 100
    .end local v2    # "outputStream":Ljava/io/FileOutputStream;
    :catch_d2
    move-exception v2

    .line 101
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 103
    if-eqz v1, :cond_e1

    .line 104
    :try_start_d8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_db
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_db} :catch_dc

    goto :goto_e1

    .line 106
    :catch_dc
    move-exception v3

    .line 107
    .local v3, "ioe":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e2

    .line 108
    .end local v3    # "ioe":Ljava/io/IOException;
    :cond_e1
    :goto_e1
    nop

    .line 109
    :goto_e2
    return v0

    .line 91
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_e3
    move-exception v2

    .line 92
    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 93
    return v0
.end method

.method public getList(Ljava/io/File;)[Ljava/io/File;
    .registers 3
    .param p1, "file"    # Ljava/io/File;

    .line 582
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getNullFile()Ljava/io/File;
    .registers 2

    .line 603
    iget-object v0, p0, Landroid/sec/clipboard/util/FileHelper;->NullFile:Ljava/io/File;

    return-object v0
.end method

.method public loadObjectFile(Ljava/io/File;)Ljava/lang/Object;
    .registers 7
    .param p1, "file"    # Ljava/io/File;

    .line 538
    const/4 v0, 0x0

    .line 540
    .local v0, "result":Ljava/lang/Object;
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_2b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_2b
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_6} :catch_2b

    .line 541
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_6
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_21

    .line 542
    .local v2, "ois":Ljava/io/ObjectInputStream;
    :try_start_b
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_17

    move-object v0, v3

    .line 543
    :try_start_10
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_21

    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    :try_start_13
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_13 .. :try_end_16} :catch_2b
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_2b
    .catch Ljava/lang/ClassCastException; {:try_start_13 .. :try_end_16} :catch_2b

    .line 554
    .end local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_8b

    .line 540
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    :catchall_17
    move-exception v3

    :try_start_18
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    goto :goto_20

    :catchall_1c
    move-exception v4

    :try_start_1d
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "result":Ljava/lang/Object;
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local p0    # "this":Landroid/sec/clipboard/util/FileHelper;
    .end local p1    # "file":Ljava/io/File;
    :goto_20
    throw v3
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_21

    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v0    # "result":Ljava/lang/Object;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "this":Landroid/sec/clipboard/util/FileHelper;
    .restart local p1    # "file":Ljava/io/File;
    :catchall_21
    move-exception v2

    :try_start_22
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_2a

    :catchall_26
    move-exception v3

    :try_start_27
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "result":Ljava/lang/Object;
    .end local p0    # "this":Landroid/sec/clipboard/util/FileHelper;
    .end local p1    # "file":Ljava/io/File;
    :goto_2a
    throw v2
    :try_end_2b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_27 .. :try_end_2b} :catch_2b
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2b} :catch_2b
    .catch Ljava/lang/ClassCastException; {:try_start_27 .. :try_end_2b} :catch_2b

    .line 543
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "result":Ljava/lang/Object;
    .restart local p0    # "this":Landroid/sec/clipboard/util/FileHelper;
    .restart local p1    # "file":Ljava/io/File;
    :catch_2b
    move-exception v1

    .line 544
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 545
    const-string v2, ""

    .line 546
    .local v2, "errMsg":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 547
    iget-object v3, p0, Landroid/sec/clipboard/util/FileHelper;->loadMessage:Ljava/lang/String;

    const-string/jumbo v4, "load success"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 548
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "load failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/sec/clipboard/util/FileHelper;->loadMessage:Ljava/lang/String;

    goto :goto_8b

    .line 550
    :cond_68
    iget-object v3, p0, Landroid/sec/clipboard/util/FileHelper;->loadMessage:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8b

    .line 551
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/sec/clipboard/util/FileHelper;->loadMessage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/sec/clipboard/util/FileHelper;->loadMessage:Ljava/lang/String;

    .line 555
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "errMsg":Ljava/lang/String;
    :cond_8b
    :goto_8b
    return-object v0
.end method

.method public makeDir(Ljava/io/File;)V
    .registers 5
    .param p1, "file"    # Ljava/io/File;

    .line 565
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_13

    .line 566
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 567
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1fd

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 569
    :cond_13
    return-void
.end method

.method public saveObjectFile(Ljava/io/File;Ljava/lang/Object;)Z
    .registers 12
    .param p1, "file"    # Ljava/io/File;
    .param p2, "obj"    # Ljava/lang/Object;

    .line 226
    const-string v0, "close : "

    const-string v1, "FileHelper"

    if-nez p2, :cond_e

    .line 227
    const-string/jumbo v0, "obj == null"

    invoke-static {v1, v0}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v0, 0x0

    return v0

    .line 231
    :cond_e
    const/4 v2, 0x1

    .line 232
    .local v2, "result":Z
    new-instance v3, Landroid/util/AtomicFile;

    invoke-direct {v3, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 233
    .local v3, "atomicFile":Landroid/util/AtomicFile;
    const/4 v4, 0x0

    .line 234
    .local v4, "fos":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 236
    .local v5, "oos":Ljava/io/ObjectOutputStream;
    :try_start_16
    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v6

    move-object v4, v6

    .line 237
    new-instance v6, Ljava/io/ObjectOutputStream;

    invoke-direct {v6, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v5, v6

    .line 238
    invoke-virtual {v5, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 239
    invoke-virtual {v3, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_27} :catch_4b
    .catchall {:try_start_16 .. :try_end_27} :catchall_49

    .line 247
    nop

    .line 248
    :try_start_28
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2c

    .line 253
    :cond_2b
    :goto_2b
    goto :goto_7b

    .line 250
    :catch_2c
    move-exception v6

    .line 251
    .local v6, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    :goto_32
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 254
    .end local v6    # "e":Ljava/io/IOException;
    goto :goto_7b

    .line 246
    :catchall_49
    move-exception v6

    goto :goto_7c

    .line 240
    :catch_4b
    move-exception v6

    .line 241
    .restart local v6    # "e":Ljava/io/IOException;
    :try_start_4c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "saveObjectFile~IOException :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 243
    invoke-virtual {v3, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_6d
    .catchall {:try_start_4c .. :try_end_6d} :catchall_49

    .line 244
    const/4 v2, 0x0

    .line 247
    .end local v6    # "e":Ljava/io/IOException;
    if-eqz v5, :cond_2b

    .line 248
    :try_start_70
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_74

    goto :goto_2b

    .line 250
    :catch_74
    move-exception v6

    .line 251
    .restart local v6    # "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_32

    .line 256
    .end local v6    # "e":Ljava/io/IOException;
    :goto_7b
    return v2

    .line 247
    :goto_7c
    if-eqz v5, :cond_9f

    .line 248
    :try_start_7e
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_82

    goto :goto_9f

    .line 250
    :catch_82
    move-exception v7

    .line 251
    .local v7, "e":Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a0

    .line 253
    .end local v7    # "e":Ljava/io/IOException;
    :cond_9f
    :goto_9f
    nop

    .line 254
    :goto_a0
    throw v6
.end method

.method public setFirstImagePathFromHtmlData(Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;)Z
    .registers 10
    .param p1, "clip"    # Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    .line 359
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 360
    return v0

    .line 363
    :cond_4
    const-string v1, ""

    .line 365
    .local v1, "sFileName":Ljava/lang/String;
    :try_start_6
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getHtml()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/sec/clipboard/util/ClipboardProcText;->getImgFileNameFromHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 368
    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 369
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_20} :catch_22

    move-object v1, v2

    .line 372
    goto :goto_26

    .line 370
    :catch_22
    move-exception v2

    .line 371
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 374
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_26
    const-string v2, "FileHelper"

    const/4 v3, 0x1

    if-eqz v1, :cond_10b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v3, :cond_33

    goto/16 :goto_10b

    .line 379
    :cond_33
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    .line 382
    .local v4, "length":I
    const-string v5, "data:"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_76

    .line 383
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 384
    .local v2, "index":I
    if-lez v2, :cond_74

    if-ge v2, v4, :cond_74

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, ";base64"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_74

    .line 385
    invoke-virtual {p1, v1}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->setThumbnailImagePath(Ljava/lang/String;)Z

    .line 386
    return v3

    .line 388
    .end local v2    # "index":I
    :cond_74
    nop

    .line 411
    return v0

    .line 388
    :cond_76
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x7

    if-le v5, v6, :cond_ac

    invoke-virtual {v1, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v7, "file://"

    invoke-virtual {v5, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_ac

    .line 389
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 390
    .end local v1    # "sFileName":Ljava/lang/String;
    .local v0, "sFileName":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->setThumbnailImagePath(Ljava/lang/String;)Z

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setFirstImagePathFromData: Substring Filepath  - "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    return v3

    .line 393
    .end local v0    # "sFileName":Ljava/lang/String;
    .restart local v1    # "sFileName":Ljava/lang/String;
    :cond_ac
    const-string/jumbo v5, "storage/emulated/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_cf

    .line 394
    invoke-virtual {p1, v1}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->setThumbnailImagePath(Ljava/lang/String;)Z

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "directly use firstImagePath...getFilePathBitmap : Substring Filepath  - "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    return v3

    .line 398
    :cond_cf
    sget v2, Landroid/sec/clipboard/util/FileHelper;->LENGTH_HTTP_URL:I

    const/4 v5, 0x0

    if-le v4, v2, :cond_e1

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "http://"

    invoke-virtual {v2, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_f2

    :cond_e1
    sget v2, Landroid/sec/clipboard/util/FileHelper;->LENGTH_HTTPS_URL:I

    if-le v4, v2, :cond_f6

    .line 399
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "https://"

    invoke-virtual {v2, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_f6

    .line 400
    :cond_f2
    invoke-virtual {p1, v5}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->setThumbnailImagePath(Ljava/lang/String;)Z

    .line 401
    return v3

    .line 402
    :cond_f6
    sget v2, Landroid/sec/clipboard/util/FileHelper;->LENGTH_CONTENT_URI:I

    if-le v4, v2, :cond_10a

    .line 403
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v6, "content://"

    invoke-virtual {v2, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_10a

    .line 404
    invoke-virtual {p1, v5}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->setThumbnailImagePath(Ljava/lang/String;)Z

    .line 405
    return v3

    .line 407
    :cond_10a
    return v0

    .line 375
    .end local v4    # "length":I
    :cond_10b
    :goto_10b
    const-string v0, "getFirstImage : FileName is empty."

    invoke-static {v2, v0}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    return v3
.end method

.method public setThumbnailImagePathFromUriData(Lcom/samsung/android/content/clipboard/data/SemUriClipData;)Z
    .registers 10
    .param p1, "clip"    # Lcom/samsung/android/content/clipboard/data/SemUriClipData;

    .line 415
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 416
    return v0

    .line 419
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 420
    .local v1, "sFileName":Ljava/lang/String;
    const-string v2, "FileHelper"

    const/4 v3, 0x1

    if-eqz v1, :cond_cb

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v3, :cond_19

    goto/16 :goto_cb

    .line 425
    :cond_19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    .line 429
    .local v4, "length":I
    const-string v5, "data:"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 430
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 431
    .local v2, "index":I
    if-lez v2, :cond_5a

    if-ge v2, v4, :cond_5a

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, ";base64"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 432
    invoke-virtual {p1, v1}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->setThumbnailPath(Ljava/lang/String;)Z

    .line 433
    return v3

    .line 435
    .end local v2    # "index":I
    :cond_5a
    nop

    .line 454
    return v0

    .line 435
    :cond_5c
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x7

    if-le v5, v6, :cond_92

    invoke-virtual {v1, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v7, "file://"

    invoke-virtual {v5, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_92

    .line 436
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 437
    .end local v1    # "sFileName":Ljava/lang/String;
    .local v0, "sFileName":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->setThumbnailPath(Ljava/lang/String;)Z

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setThumbnailPathFromData: Substring Filepath  - "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return v3

    .line 440
    .end local v0    # "sFileName":Ljava/lang/String;
    .restart local v1    # "sFileName":Ljava/lang/String;
    :cond_92
    const-string/jumbo v5, "storage/emulated/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b5

    .line 441
    invoke-virtual {p1, v1}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->setThumbnailPath(Ljava/lang/String;)Z

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "directly use ThumbnailPath...getFilePathBitmap : Substring Filepath  - "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    return v3

    .line 445
    :cond_b5
    sget v2, Landroid/sec/clipboard/util/FileHelper;->LENGTH_CONTENT_URI:I

    if-le v4, v2, :cond_ca

    .line 446
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v5, "content://"

    invoke-virtual {v2, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_ca

    .line 447
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->setThumbnailPath(Ljava/lang/String;)Z

    .line 448
    return v3

    .line 450
    :cond_ca
    return v0

    .line 421
    .end local v4    # "length":I
    :cond_cb
    :goto_cb
    const-string/jumbo v0, "getThumbnailImage : FileName is empty."

    invoke-static {v2, v0}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    return v3
.end method
