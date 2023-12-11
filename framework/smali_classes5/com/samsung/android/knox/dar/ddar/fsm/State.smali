.class public final enum Lcom/samsung/android/knox/dar/ddar/fsm/State;
.super Ljava/lang/Enum;
.source "State.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/dar/ddar/fsm/State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/knox/dar/ddar/fsm/State;

.field public static final enum DEVICE_LOCK_DATA_LOCK:Lcom/samsung/android/knox/dar/ddar/fsm/State;

.field public static final enum DEVICE_LOCK_DATA_UNLOCK:Lcom/samsung/android/knox/dar/ddar/fsm/State;

.field public static final enum DEVICE_UNLOCK_DATA_LOCK:Lcom/samsung/android/knox/dar/ddar/fsm/State;

.field public static final enum DEVICE_UNLOCK_DATA_UNLOCK:Lcom/samsung/android/knox/dar/ddar/fsm/State;

.field public static final enum IDLE:Lcom/samsung/android/knox/dar/ddar/fsm/State;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/knox/dar/ddar/fsm/State;
    .registers 5

    .line 6
    sget-object v0, Lcom/samsung/android/knox/dar/ddar/fsm/State;->IDLE:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    sget-object v1, Lcom/samsung/android/knox/dar/ddar/fsm/State;->DEVICE_UNLOCK_DATA_UNLOCK:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    sget-object v2, Lcom/samsung/android/knox/dar/ddar/fsm/State;->DEVICE_LOCK_DATA_UNLOCK:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    sget-object v3, Lcom/samsung/android/knox/dar/ddar/fsm/State;->DEVICE_LOCK_DATA_LOCK:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    sget-object v4, Lcom/samsung/android/knox/dar/ddar/fsm/State;->DEVICE_UNLOCK_DATA_LOCK:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/samsung/android/knox/dar/ddar/fsm/State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 7
    new-instance v0, Lcom/samsung/android/knox/dar/ddar/fsm/State;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/dar/ddar/fsm/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/dar/ddar/fsm/State;->IDLE:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    .line 8
    new-instance v0, Lcom/samsung/android/knox/dar/ddar/fsm/State;

    const-string v1, "DEVICE_UNLOCK_DATA_UNLOCK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/dar/ddar/fsm/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/dar/ddar/fsm/State;->DEVICE_UNLOCK_DATA_UNLOCK:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    .line 9
    new-instance v0, Lcom/samsung/android/knox/dar/ddar/fsm/State;

    const-string v1, "DEVICE_LOCK_DATA_UNLOCK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/dar/ddar/fsm/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/dar/ddar/fsm/State;->DEVICE_LOCK_DATA_UNLOCK:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    .line 10
    new-instance v0, Lcom/samsung/android/knox/dar/ddar/fsm/State;

    const-string v1, "DEVICE_LOCK_DATA_LOCK"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/dar/ddar/fsm/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/dar/ddar/fsm/State;->DEVICE_LOCK_DATA_LOCK:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    .line 11
    new-instance v0, Lcom/samsung/android/knox/dar/ddar/fsm/State;

    const-string v1, "DEVICE_UNLOCK_DATA_LOCK"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/dar/ddar/fsm/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/dar/ddar/fsm/State;->DEVICE_UNLOCK_DATA_LOCK:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    .line 6
    invoke-static {}, Lcom/samsung/android/knox/dar/ddar/fsm/State;->$values()[Lcom/samsung/android/knox/dar/ddar/fsm/State;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/dar/ddar/fsm/State;->$VALUES:[Lcom/samsung/android/knox/dar/ddar/fsm/State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/dar/ddar/fsm/State;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 6
    const-class v0, Lcom/samsung/android/knox/dar/ddar/fsm/State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/dar/ddar/fsm/State;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/knox/dar/ddar/fsm/State;
    .registers 1

    .line 6
    sget-object v0, Lcom/samsung/android/knox/dar/ddar/fsm/State;->$VALUES:[Lcom/samsung/android/knox/dar/ddar/fsm/State;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/dar/ddar/fsm/State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/dar/ddar/fsm/State;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 14
    sget-object v0, Lcom/samsung/android/knox/dar/ddar/fsm/State$1;->$SwitchMap$com$samsung$android$knox$dar$ddar$fsm$State:[I

    invoke-virtual {p0}, Lcom/samsung/android/knox/dar/ddar/fsm/State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    .line 20
    const-string v0, "-"

    return-object v0

    .line 19
    :pswitch_e
    const-string v0, "DEVICE_UNLOCK_DATA_LOCK"

    return-object v0

    .line 18
    :pswitch_11
    const-string v0, "DEVICE_LOCK_DATA_LOCK"

    return-object v0

    .line 17
    :pswitch_14
    const-string v0, "DEVICE_LOCK_DATA_UNLOCK"

    return-object v0

    .line 16
    :pswitch_17
    const-string v0, "DEVICE_UNLOCK_DATA_UNLOCK"

    return-object v0

    .line 15
    :pswitch_1a
    const-string v0, "IDLE"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
    .end packed-switch
.end method
