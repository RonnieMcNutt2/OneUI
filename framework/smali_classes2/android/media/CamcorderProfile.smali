.class public Landroid/media/CamcorderProfile;
.super Ljava/lang/Object;
.source "CamcorderProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/CamcorderProfile$Quality;
    }
.end annotation


# static fields
.field public static final QUALITY_1080P:I = 0x6

.field public static final QUALITY_2160P:I = 0x8

.field public static final QUALITY_2K:I = 0xc

.field public static final QUALITY_480P:I = 0x4

.field public static final QUALITY_4KDCI:I = 0xa

.field public static final QUALITY_720P:I = 0x5

.field public static final QUALITY_8KUHD:I = 0xd

.field public static final QUALITY_CIF:I = 0x3

.field public static final QUALITY_HIGH:I = 0x1

.field public static final QUALITY_HIGH_SPEED_1080P:I = 0x7d4

.field public static final QUALITY_HIGH_SPEED_2160P:I = 0x7d5

.field public static final QUALITY_HIGH_SPEED_480P:I = 0x7d2

.field public static final QUALITY_HIGH_SPEED_4KDCI:I = 0x7d8

.field public static final QUALITY_HIGH_SPEED_720P:I = 0x7d3

.field public static final QUALITY_HIGH_SPEED_CIF:I = 0x7d6

.field public static final QUALITY_HIGH_SPEED_HIGH:I = 0x7d1

.field private static final QUALITY_HIGH_SPEED_LIST_END:I = 0x7d8

.field private static final QUALITY_HIGH_SPEED_LIST_START:I = 0x7d0

.field public static final QUALITY_HIGH_SPEED_LOW:I = 0x7d0

.field public static final QUALITY_HIGH_SPEED_VGA:I = 0x7d7

.field private static final QUALITY_LIST_END:I = 0xd

.field private static final QUALITY_LIST_START:I = 0x0

.field public static final QUALITY_LOW:I = 0x0

.field public static final QUALITY_QCIF:I = 0x2

.field public static final QUALITY_QHD:I = 0xb

.field public static final QUALITY_QVGA:I = 0x7

.field public static final QUALITY_TIME_LAPSE_1080P:I = 0x3ee

.field public static final QUALITY_TIME_LAPSE_2160P:I = 0x3f0

.field public static final QUALITY_TIME_LAPSE_2K:I = 0x3f4

.field public static final QUALITY_TIME_LAPSE_480P:I = 0x3ec

.field public static final QUALITY_TIME_LAPSE_4KDCI:I = 0x3f2

.field public static final QUALITY_TIME_LAPSE_720P:I = 0x3ed

.field public static final QUALITY_TIME_LAPSE_8KUHD:I = 0x3f5

.field public static final QUALITY_TIME_LAPSE_CIF:I = 0x3eb

.field public static final QUALITY_TIME_LAPSE_HIGH:I = 0x3e9

.field private static final QUALITY_TIME_LAPSE_LIST_END:I = 0x3f5

.field private static final QUALITY_TIME_LAPSE_LIST_START:I = 0x3e8

.field public static final QUALITY_TIME_LAPSE_LOW:I = 0x3e8

.field public static final QUALITY_TIME_LAPSE_QCIF:I = 0x3ea

.field public static final QUALITY_TIME_LAPSE_QHD:I = 0x3f3

.field public static final QUALITY_TIME_LAPSE_QVGA:I = 0x3ef

.field public static final QUALITY_TIME_LAPSE_VGA:I = 0x3f1

.field public static final QUALITY_VGA:I = 0x9

.field public static final RETURN_ADVANCED_VIDEO_PROFILES:J = 0xc47d0acL


# instance fields
.field public audioBitRate:I

.field public audioChannels:I

.field public audioCodec:I

.field public audioSampleRate:I

.field public duration:I

.field public fileFormat:I

.field public quality:I

.field public videoBitRate:I

.field public videoCodec:I

.field public videoFrameHeight:I

.field public videoFrameRate:I

.field public videoFrameWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 696
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 697
    invoke-static {}, Landroid/media/CamcorderProfile;->native_init()V

    .line 698
    return-void
.end method

.method private constructor <init>(IIIIIIIIIIII)V
    .registers 13
    .param p1, "duration"    # I
    .param p2, "quality"    # I
    .param p3, "fileFormat"    # I
    .param p4, "videoCodec"    # I
    .param p5, "videoBitRate"    # I
    .param p6, "videoFrameRate"    # I
    .param p7, "videoWidth"    # I
    .param p8, "videoHeight"    # I
    .param p9, "audioCodec"    # I
    .param p10, "audioBitRate"    # I
    .param p11, "audioSampleRate"    # I
    .param p12, "audioChannels"    # I

    .line 712
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 714
    iput p1, p0, Landroid/media/CamcorderProfile;->duration:I

    .line 715
    iput p2, p0, Landroid/media/CamcorderProfile;->quality:I

    .line 716
    iput p3, p0, Landroid/media/CamcorderProfile;->fileFormat:I

    .line 717
    iput p4, p0, Landroid/media/CamcorderProfile;->videoCodec:I

    .line 718
    iput p5, p0, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 719
    iput p6, p0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 720
    iput p7, p0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 721
    iput p8, p0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 722
    iput p9, p0, Landroid/media/CamcorderProfile;->audioCodec:I

    .line 723
    iput p10, p0, Landroid/media/CamcorderProfile;->audioBitRate:I

    .line 724
    iput p11, p0, Landroid/media/CamcorderProfile;->audioSampleRate:I

    .line 725
    iput p12, p0, Landroid/media/CamcorderProfile;->audioChannels:I

    .line 726
    return-void
.end method

.method public static get(I)Landroid/media/CamcorderProfile;
    .registers 5
    .param p0, "quality"    # I

    .line 451
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    .line 452
    .local v0, "numberOfCameras":I
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 453
    .local v1, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_1b

    .line 454
    invoke-static {v2, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 455
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_18

    .line 456
    invoke-static {v2, p0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v3

    return-object v3

    .line 453
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 459
    .end local v2    # "i":I
    :cond_1b
    const/4 v2, 0x0

    return-object v2
.end method

.method public static get(II)Landroid/media/CamcorderProfile;
    .registers 4
    .param p0, "cameraId"    # I
    .param p1, "quality"    # I

    .line 519
    if-ltz p1, :cond_6

    const/16 v0, 0xd

    if-le p1, v0, :cond_16

    :cond_6
    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_e

    const/16 v0, 0x3f5

    if-le p1, v0, :cond_16

    :cond_e
    const/16 v0, 0x7d0

    if-lt p1, v0, :cond_1b

    const/16 v0, 0x7d8

    if-gt p1, v0, :cond_1b

    .line 528
    :cond_16
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->native_get_camcorder_profile(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    return-object v0

    .line 525
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported quality level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 526
    .local v0, "errMessage":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getAll(Ljava/lang/String;I)Landroid/media/EncoderProfiles;
    .registers 5
    .param p0, "cameraId"    # Ljava/lang/String;
    .param p1, "quality"    # I

    .line 606
    if-ltz p1, :cond_6

    const/16 v0, 0xd

    if-le p1, v0, :cond_16

    :cond_6
    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_e

    const/16 v0, 0x3f5

    if-le p1, v0, :cond_16

    :cond_e
    const/16 v0, 0x7d0

    if-lt p1, v0, :cond_2f

    const/16 v0, 0x7d8

    if-gt p1, v0, :cond_2f

    .line 619
    :cond_16
    :try_start_16
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_1e} :catch_2c

    .line 622
    .local v0, "id":I
    nop

    .line 623
    nop

    .line 625
    const-wide/32 v1, 0xc47d0ac

    invoke-static {v1, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v1

    .line 623
    invoke-static {v0, p1, v1}, Landroid/media/CamcorderProfile;->native_get_camcorder_profiles(IIZ)Landroid/media/EncoderProfiles;

    move-result-object v1

    return-object v1

    .line 620
    .end local v0    # "id":I
    :catch_2c
    move-exception v0

    .line 621
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    return-object v1

    .line 612
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported quality level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 613
    .local v0, "errMessage":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static hasProfile(I)Z
    .registers 5
    .param p0, "quality"    # I

    .line 652
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    .line 653
    .local v0, "numberOfCameras":I
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 654
    .local v1, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_1b

    .line 655
    invoke-static {v2, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 656
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_18

    .line 657
    invoke-static {v2, p0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v3

    return v3

    .line 654
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 660
    .end local v2    # "i":I
    :cond_1b
    const/4 v2, 0x0

    return v2
.end method

.method public static hasProfile(II)Z
    .registers 3
    .param p0, "cameraId"    # I
    .param p1, "quality"    # I

    .line 692
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->native_has_camcorder_profile(II)Z

    move-result v0

    return v0
.end method

.method private static final native native_get_camcorder_profile(II)Landroid/media/CamcorderProfile;
.end method

.method private static final native native_get_camcorder_profiles(IIZ)Landroid/media/EncoderProfiles;
.end method

.method private static final native native_has_camcorder_profile(II)Z
.end method

.method private static final native native_init()V
.end method
