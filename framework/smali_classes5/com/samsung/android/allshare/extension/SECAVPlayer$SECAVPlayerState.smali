.class final enum Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;
.super Ljava/lang/Enum;
.source "SECAVPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/extension/SECAVPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SECAVPlayerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

.field public static final enum BUFFERING:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

.field public static final enum FINISHED:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

.field public static final enum PAUSE:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

.field public static final enum PLAYING:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

.field public static final enum STOPPED:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

.field public static final enum UNKNOWN:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;
    .registers 6

    .line 225
    sget-object v0, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->STOPPED:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    sget-object v1, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->FINISHED:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    sget-object v2, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->BUFFERING:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    sget-object v3, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->PLAYING:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    sget-object v4, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->PAUSE:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    sget-object v5, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->UNKNOWN:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    filled-new-array/range {v0 .. v5}, [Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 226
    new-instance v0, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    const-string v1, "STOPPED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->STOPPED:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    new-instance v0, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    const-string v1, "FINISHED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->FINISHED:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    new-instance v0, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    const-string v1, "BUFFERING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->BUFFERING:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    new-instance v0, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    const-string v1, "PLAYING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->PLAYING:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    new-instance v0, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    const-string v1, "PAUSE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->PAUSE:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    new-instance v0, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->UNKNOWN:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    .line 225
    invoke-static {}, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->$values()[Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->$VALUES:[Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 225
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 225
    const-class v0, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;
    .registers 1

    .line 225
    sget-object v0, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->$VALUES:[Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    invoke-virtual {v0}, [Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    return-object v0
.end method
