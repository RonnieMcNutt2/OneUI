.class public final enum Lcom/samsung/app/video/editor/external/NativeInterface$playerState;
.super Ljava/lang/Enum;
.source "NativeInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/app/video/editor/external/NativeInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "playerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/app/video/editor/external/NativeInterface$playerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

.field public static final enum VT_PREVIEW_PLAYER_AUDIO_DECODE_FAIL:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

.field public static final enum VT_PREVIEW_PLAYER_CLOSED:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

.field public static final enum VT_PREVIEW_PLAYER_CREATED:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

.field public static final enum VT_PREVIEW_PLAYER_DAM_CONFIGURE:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

.field public static final enum VT_PREVIEW_PLAYER_DAM_DISPLAY:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

.field public static final enum VT_PREVIEW_PLAYER_DAM_UNREGISTER:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

.field public static final enum VT_PREVIEW_PLAYER_FILE_OPEN_FAIL:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

.field public static final enum VT_PREVIEW_PLAYER_PAUSED:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

.field public static final enum VT_PREVIEW_PLAYER_PLAYBACK_COMPLETE:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

.field public static final enum VT_PREVIEW_PLAYER_PLAYING:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

.field public static final enum VT_PREVIEW_PLAYER_RESUMED:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

.field public static final enum VT_PREVIEW_PLAYER_STOPED:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

.field public static final enum VT_PREVIEW_PLAYER_STOPED_ON_ERROR:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

.field public static final enum VT_PREVIEW_PLAYER_VIDEO_DECODE_FAIL:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 646
    new-instance v0, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    const-string v1, "VT_PREVIEW_PLAYER_AUDIO_DECODE_FAIL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_AUDIO_DECODE_FAIL:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    .line 650
    new-instance v1, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    const-string v2, "VT_PREVIEW_PLAYER_CLOSED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_CLOSED:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    .line 654
    new-instance v2, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    const-string v3, "VT_PREVIEW_PLAYER_CREATED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_CREATED:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    .line 658
    new-instance v3, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    const-string v4, "VT_PREVIEW_PLAYER_DAM_CONFIGURE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_DAM_CONFIGURE:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    .line 662
    new-instance v4, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    const-string v5, "VT_PREVIEW_PLAYER_DAM_DISPLAY"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_DAM_DISPLAY:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    .line 666
    new-instance v5, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    const-string v6, "VT_PREVIEW_PLAYER_DAM_UNREGISTER"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_DAM_UNREGISTER:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    .line 670
    new-instance v6, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    const-string v7, "VT_PREVIEW_PLAYER_FILE_OPEN_FAIL"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_FILE_OPEN_FAIL:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    .line 674
    new-instance v7, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    const-string v8, "VT_PREVIEW_PLAYER_PAUSED"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_PAUSED:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    .line 678
    new-instance v8, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    const-string v9, "VT_PREVIEW_PLAYER_PLAYBACK_COMPLETE"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_PLAYBACK_COMPLETE:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    .line 682
    new-instance v9, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    const-string v10, "VT_PREVIEW_PLAYER_PLAYING"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_PLAYING:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    .line 686
    new-instance v10, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    const-string v11, "VT_PREVIEW_PLAYER_RESUMED"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_RESUMED:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    .line 690
    new-instance v11, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    const-string v12, "VT_PREVIEW_PLAYER_STOPED"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_STOPED:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    .line 694
    new-instance v12, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    const-string v13, "VT_PREVIEW_PLAYER_STOPED_ON_ERROR"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_STOPED_ON_ERROR:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    .line 698
    new-instance v13, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    const-string v14, "VT_PREVIEW_PLAYER_VIDEO_DECODE_FAIL"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_VIDEO_DECODE_FAIL:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    .line 642
    filled-new-array/range {v0 .. v13}, [Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    move-result-object v0

    sput-object v0, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->$VALUES:[Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 642
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/NativeInterface$playerState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 642
    const-class v0, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    return-object v0
.end method

.method public static values()[Lcom/samsung/app/video/editor/external/NativeInterface$playerState;
    .registers 1

    .line 642
    sget-object v0, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->$VALUES:[Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    invoke-virtual {v0}, [Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    return-object v0
.end method
