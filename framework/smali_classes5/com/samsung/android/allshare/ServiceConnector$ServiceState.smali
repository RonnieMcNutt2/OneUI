.class public final enum Lcom/samsung/android/allshare/ServiceConnector$ServiceState;
.super Ljava/lang/Enum;
.source "ServiceConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/ServiceConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ServiceState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/allshare/ServiceConnector$ServiceState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

.field public static final enum DISABLED:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

.field public static final enum ENABLED:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

.field public static final enum UNABLE_TO_CONNECT:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

.field public static final enum UNABLE_TO_DISCONNECT:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

.field public static final enum UNKNOWN:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/allshare/ServiceConnector$ServiceState;
    .registers 5

    .line 95
    sget-object v0, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;->ENABLED:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    sget-object v1, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;->DISABLED:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    sget-object v2, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;->UNABLE_TO_CONNECT:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    sget-object v3, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;->UNABLE_TO_DISCONNECT:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    sget-object v4, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;->UNKNOWN:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 100
    new-instance v0, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    const-string v1, "ENABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;->ENABLED:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    .line 105
    new-instance v0, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    const-string v1, "DISABLED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;->DISABLED:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    .line 110
    new-instance v0, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    const-string v1, "UNABLE_TO_CONNECT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;->UNABLE_TO_CONNECT:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    .line 115
    new-instance v0, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    const-string v1, "UNABLE_TO_DISCONNECT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;->UNABLE_TO_DISCONNECT:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    .line 120
    new-instance v0, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;->UNKNOWN:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    .line 95
    invoke-static {}, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;->$values()[Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;->$VALUES:[Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/allshare/ServiceConnector$ServiceState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 95
    const-class v0, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/allshare/ServiceConnector$ServiceState;
    .registers 1

    .line 95
    sget-object v0, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;->$VALUES:[Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    invoke-virtual {v0}, [Lcom/samsung/android/allshare/ServiceConnector$ServiceState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    return-object v0
.end method
