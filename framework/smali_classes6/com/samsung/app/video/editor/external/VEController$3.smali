.class synthetic Lcom/samsung/app/video/editor/external/VEController$3;
.super Ljava/lang/Object;
.source "VEController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/app/video/editor/external/VEController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$samsung$app$video$editor$external$NativeInterface$playerState:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 486
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->values()[Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/app/video/editor/external/VEController$3;->$SwitchMap$com$samsung$app$video$editor$external$NativeInterface$playerState:[I

    :try_start_9
    sget-object v1, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_AUDIO_DECODE_FAIL:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v0

    :goto_14
    :try_start_14
    sget-object v0, Lcom/samsung/app/video/editor/external/VEController$3;->$SwitchMap$com$samsung$app$video$editor$external$NativeInterface$playerState:[I

    sget-object v1, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_FILE_OPEN_FAIL:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    move-exception v0

    :goto_21
    :try_start_21
    sget-object v0, Lcom/samsung/app/video/editor/external/VEController$3;->$SwitchMap$com$samsung$app$video$editor$external$NativeInterface$playerState:[I

    sget-object v1, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_VIDEO_DECODE_FAIL:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_2c} :catch_2d

    goto :goto_2e

    :catch_2d
    move-exception v0

    :goto_2e
    :try_start_2e
    sget-object v0, Lcom/samsung/app/video/editor/external/VEController$3;->$SwitchMap$com$samsung$app$video$editor$external$NativeInterface$playerState:[I

    sget-object v1, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_STOPED_ON_ERROR:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_39} :catch_3a

    goto :goto_3b

    :catch_3a
    move-exception v0

    :goto_3b
    :try_start_3b
    sget-object v0, Lcom/samsung/app/video/editor/external/VEController$3;->$SwitchMap$com$samsung$app$video$editor$external$NativeInterface$playerState:[I

    sget-object v1, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_PLAYBACK_COMPLETE:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_46} :catch_47

    goto :goto_48

    :catch_47
    move-exception v0

    :goto_48
    :try_start_48
    sget-object v0, Lcom/samsung/app/video/editor/external/VEController$3;->$SwitchMap$com$samsung$app$video$editor$external$NativeInterface$playerState:[I

    sget-object v1, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_DAM_CONFIGURE:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_53} :catch_54

    goto :goto_55

    :catch_54
    move-exception v0

    :goto_55
    :try_start_55
    sget-object v0, Lcom/samsung/app/video/editor/external/VEController$3;->$SwitchMap$com$samsung$app$video$editor$external$NativeInterface$playerState:[I

    sget-object v1, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_DAM_DISPLAY:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_60} :catch_61

    goto :goto_62

    :catch_61
    move-exception v0

    :goto_62
    :try_start_62
    sget-object v0, Lcom/samsung/app/video/editor/external/VEController$3;->$SwitchMap$com$samsung$app$video$editor$external$NativeInterface$playerState:[I

    sget-object v1, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_DAM_UNREGISTER:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_6f

    goto :goto_70

    :catch_6f
    move-exception v0

    :goto_70
    return-void
.end method
