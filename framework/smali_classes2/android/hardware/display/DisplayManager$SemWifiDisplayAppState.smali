.class public final enum Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;
.super Ljava/lang/Enum;
.source "DisplayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SemWifiDisplayAppState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

.field public static final enum PAUSE:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

.field public static final enum RESUME:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

.field public static final enum SETUP:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

.field public static final enum TEARDOWN:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;


# direct methods
.method private static synthetic $values()[Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;
    .registers 4

    .line 3229
    sget-object v0, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->SETUP:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    sget-object v1, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->PAUSE:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    sget-object v2, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->RESUME:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    sget-object v3, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->TEARDOWN:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    filled-new-array {v0, v1, v2, v3}, [Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 3233
    new-instance v0, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    const-string v1, "SETUP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->SETUP:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    .line 3237
    new-instance v0, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    const-string v1, "PAUSE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->PAUSE:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    .line 3241
    new-instance v0, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    const-string v1, "RESUME"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->RESUME:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    .line 3245
    new-instance v0, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    const-string v1, "TEARDOWN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->TEARDOWN:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    .line 3229
    invoke-static {}, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->$values()[Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    move-result-object v0

    sput-object v0, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->$VALUES:[Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3229
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 3229
    const-class v0, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    return-object v0
.end method

.method public static values()[Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;
    .registers 1

    .line 3229
    sget-object v0, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->$VALUES:[Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    invoke-virtual {v0}, [Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    return-object v0
.end method
