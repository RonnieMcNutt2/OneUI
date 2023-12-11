.class public final enum Lcom/samsung/app/video/editor/external/UHDMode;
.super Ljava/lang/Enum;
.source "UHDMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/app/video/editor/external/UHDMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/app/video/editor/external/UHDMode;

.field public static final enum ERROR:Lcom/samsung/app/video/editor/external/UHDMode;

.field public static final enum UHD_OFF:Lcom/samsung/app/video/editor/external/UHDMode;

.field public static final enum UHD_PREVIEW_EXPORT_EFFECT:Lcom/samsung/app/video/editor/external/UHDMode;

.field public static final enum UHD_PREVIEW_EXPORT_EFFECT_DETAIL:Lcom/samsung/app/video/editor/external/UHDMode;

.field public static final enum UHD_PREVIEW_ONLY:Lcom/samsung/app/video/editor/external/UHDMode;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 4
    new-instance v0, Lcom/samsung/app/video/editor/external/UHDMode;

    const-string v1, "ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/app/video/editor/external/UHDMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/app/video/editor/external/UHDMode;->ERROR:Lcom/samsung/app/video/editor/external/UHDMode;

    .line 5
    new-instance v1, Lcom/samsung/app/video/editor/external/UHDMode;

    const-string v2, "UHD_OFF"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/samsung/app/video/editor/external/UHDMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/app/video/editor/external/UHDMode;->UHD_OFF:Lcom/samsung/app/video/editor/external/UHDMode;

    .line 6
    new-instance v2, Lcom/samsung/app/video/editor/external/UHDMode;

    const-string v3, "UHD_PREVIEW_ONLY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/samsung/app/video/editor/external/UHDMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/app/video/editor/external/UHDMode;->UHD_PREVIEW_ONLY:Lcom/samsung/app/video/editor/external/UHDMode;

    .line 7
    new-instance v3, Lcom/samsung/app/video/editor/external/UHDMode;

    const-string v4, "UHD_PREVIEW_EXPORT_EFFECT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/samsung/app/video/editor/external/UHDMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/app/video/editor/external/UHDMode;->UHD_PREVIEW_EXPORT_EFFECT:Lcom/samsung/app/video/editor/external/UHDMode;

    .line 8
    new-instance v4, Lcom/samsung/app/video/editor/external/UHDMode;

    const-string v5, "UHD_PREVIEW_EXPORT_EFFECT_DETAIL"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/samsung/app/video/editor/external/UHDMode;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/samsung/app/video/editor/external/UHDMode;->UHD_PREVIEW_EXPORT_EFFECT_DETAIL:Lcom/samsung/app/video/editor/external/UHDMode;

    .line 3
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/samsung/app/video/editor/external/UHDMode;

    move-result-object v0

    sput-object v0, Lcom/samsung/app/video/editor/external/UHDMode;->$VALUES:[Lcom/samsung/app/video/editor/external/UHDMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/UHDMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/samsung/app/video/editor/external/UHDMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/UHDMode;

    return-object v0
.end method

.method public static values()[Lcom/samsung/app/video/editor/external/UHDMode;
    .registers 1

    .line 3
    sget-object v0, Lcom/samsung/app/video/editor/external/UHDMode;->$VALUES:[Lcom/samsung/app/video/editor/external/UHDMode;

    invoke-virtual {v0}, [Lcom/samsung/app/video/editor/external/UHDMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/app/video/editor/external/UHDMode;

    return-object v0
.end method
