.class Landroid/media/MediaCas$2;
.super Landroid/util/Singleton;
.source "MediaCas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Landroid/hardware/cas/V1_0/IMediaCasService;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 288
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Landroid/hardware/cas/V1_0/IMediaCasService;
    .registers 5

    .line 292
    const-string v0, "MediaCas"

    const/4 v1, 0x1

    :try_start_3
    const-string v2, "Trying to get cas@1.2 service"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    nop

    .line 294
    invoke-static {v1}, Landroid/hardware/cas/V1_2/IMediaCasService;->getService(Z)Landroid/hardware/cas/V1_2/IMediaCasService;

    move-result-object v2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_11

    .line 296
    .local v2, "serviceV12":Landroid/hardware/cas/V1_2/IMediaCasService;
    if-eqz v2, :cond_10

    .line 297
    return-object v2

    .line 301
    .end local v2    # "serviceV12":Landroid/hardware/cas/V1_2/IMediaCasService;
    :cond_10
    goto :goto_17

    .line 299
    :catch_11
    move-exception v2

    .line 300
    .local v2, "eV1_2":Ljava/lang/Exception;
    const-string v3, "Failed to get cas@1.2 service"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    .end local v2    # "eV1_2":Ljava/lang/Exception;
    :goto_17
    :try_start_17
    const-string v2, "Trying to get cas@1.1 service"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    nop

    .line 306
    invoke-static {v1}, Landroid/hardware/cas/V1_1/IMediaCasService;->getService(Z)Landroid/hardware/cas/V1_1/IMediaCasService;

    move-result-object v2
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_21} :catch_25

    .line 308
    .local v2, "serviceV11":Landroid/hardware/cas/V1_1/IMediaCasService;
    if-eqz v2, :cond_24

    .line 309
    return-object v2

    .line 313
    .end local v2    # "serviceV11":Landroid/hardware/cas/V1_1/IMediaCasService;
    :cond_24
    goto :goto_2b

    .line 311
    :catch_25
    move-exception v2

    .line 312
    .local v2, "eV1_1":Ljava/lang/Exception;
    const-string v3, "Failed to get cas@1.1 service"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    .end local v2    # "eV1_1":Ljava/lang/Exception;
    :goto_2b
    :try_start_2b
    const-string v2, "Trying to get cas@1.0 service"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-static {v1}, Landroid/hardware/cas/V1_0/IMediaCasService;->getService(Z)Landroid/hardware/cas/V1_0/IMediaCasService;

    move-result-object v0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_34} :catch_35

    return-object v0

    .line 318
    :catch_35
    move-exception v1

    .line 319
    .local v1, "eV1_0":Ljava/lang/Exception;
    const-string v2, "Failed to get cas@1.0 service"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    .end local v1    # "eV1_0":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .registers 2

    .line 288
    invoke-virtual {p0}, Landroid/media/MediaCas$2;->create()Landroid/hardware/cas/V1_0/IMediaCasService;

    move-result-object v0

    return-object v0
.end method
