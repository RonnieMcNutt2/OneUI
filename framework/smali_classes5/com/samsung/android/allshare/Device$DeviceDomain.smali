.class public final enum Lcom/samsung/android/allshare/Device$DeviceDomain;
.super Ljava/lang/Enum;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceDomain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/allshare/Device$DeviceDomain;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/allshare/Device$DeviceDomain;

.field public static final enum LOCAL_NETWORK:Lcom/samsung/android/allshare/Device$DeviceDomain;

.field public static final enum MY_DEVICE:Lcom/samsung/android/allshare/Device$DeviceDomain;

.field public static final enum REMOTE_NETWORK:Lcom/samsung/android/allshare/Device$DeviceDomain;

.field public static final enum UNKNOWN:Lcom/samsung/android/allshare/Device$DeviceDomain;


# instance fields
.field private final enumString:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/allshare/Device$DeviceDomain;
    .registers 4

    .line 50
    sget-object v0, Lcom/samsung/android/allshare/Device$DeviceDomain;->MY_DEVICE:Lcom/samsung/android/allshare/Device$DeviceDomain;

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceDomain;->LOCAL_NETWORK:Lcom/samsung/android/allshare/Device$DeviceDomain;

    sget-object v2, Lcom/samsung/android/allshare/Device$DeviceDomain;->REMOTE_NETWORK:Lcom/samsung/android/allshare/Device$DeviceDomain;

    sget-object v3, Lcom/samsung/android/allshare/Device$DeviceDomain;->UNKNOWN:Lcom/samsung/android/allshare/Device$DeviceDomain;

    filled-new-array {v0, v1, v2, v3}, [Lcom/samsung/android/allshare/Device$DeviceDomain;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 54
    new-instance v0, Lcom/samsung/android/allshare/Device$DeviceDomain;

    const-string v1, "MY_DEVICE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/Device$DeviceDomain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/Device$DeviceDomain;->MY_DEVICE:Lcom/samsung/android/allshare/Device$DeviceDomain;

    .line 58
    new-instance v0, Lcom/samsung/android/allshare/Device$DeviceDomain;

    const-string v1, "LOCAL_NETWORK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/Device$DeviceDomain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/Device$DeviceDomain;->LOCAL_NETWORK:Lcom/samsung/android/allshare/Device$DeviceDomain;

    .line 62
    new-instance v0, Lcom/samsung/android/allshare/Device$DeviceDomain;

    const-string v1, "REMOTE_NETWORK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/Device$DeviceDomain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/Device$DeviceDomain;->REMOTE_NETWORK:Lcom/samsung/android/allshare/Device$DeviceDomain;

    .line 66
    new-instance v0, Lcom/samsung/android/allshare/Device$DeviceDomain;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/Device$DeviceDomain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/Device$DeviceDomain;->UNKNOWN:Lcom/samsung/android/allshare/Device$DeviceDomain;

    .line 50
    invoke-static {}, Lcom/samsung/android/allshare/Device$DeviceDomain;->$values()[Lcom/samsung/android/allshare/Device$DeviceDomain;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/allshare/Device$DeviceDomain;->$VALUES:[Lcom/samsung/android/allshare/Device$DeviceDomain;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "enumStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 72
    iput-object p3, p0, Lcom/samsung/android/allshare/Device$DeviceDomain;->enumString:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public static stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/Device$DeviceDomain;
    .registers 2
    .param p0, "enumStr"    # Ljava/lang/String;

    .line 82
    if-nez p0, :cond_5

    .line 83
    sget-object v0, Lcom/samsung/android/allshare/Device$DeviceDomain;->UNKNOWN:Lcom/samsung/android/allshare/Device$DeviceDomain;

    return-object v0

    .line 85
    :cond_5
    const-string v0, "LOCAL_NETWORK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 86
    sget-object v0, Lcom/samsung/android/allshare/Device$DeviceDomain;->LOCAL_NETWORK:Lcom/samsung/android/allshare/Device$DeviceDomain;

    return-object v0

    .line 87
    :cond_10
    const-string v0, "MY_DEVICE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 88
    sget-object v0, Lcom/samsung/android/allshare/Device$DeviceDomain;->MY_DEVICE:Lcom/samsung/android/allshare/Device$DeviceDomain;

    return-object v0

    .line 89
    :cond_1b
    const-string v0, "REMOTE_NETWORK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 90
    sget-object v0, Lcom/samsung/android/allshare/Device$DeviceDomain;->REMOTE_NETWORK:Lcom/samsung/android/allshare/Device$DeviceDomain;

    return-object v0

    .line 91
    :cond_26
    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 92
    sget-object v0, Lcom/samsung/android/allshare/Device$DeviceDomain;->UNKNOWN:Lcom/samsung/android/allshare/Device$DeviceDomain;

    return-object v0

    .line 94
    :cond_31
    sget-object v0, Lcom/samsung/android/allshare/Device$DeviceDomain;->UNKNOWN:Lcom/samsung/android/allshare/Device$DeviceDomain;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/allshare/Device$DeviceDomain;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 50
    const-class v0, Lcom/samsung/android/allshare/Device$DeviceDomain;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/allshare/Device$DeviceDomain;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/allshare/Device$DeviceDomain;
    .registers 1

    .line 50
    sget-object v0, Lcom/samsung/android/allshare/Device$DeviceDomain;->$VALUES:[Lcom/samsung/android/allshare/Device$DeviceDomain;

    invoke-virtual {v0}, [Lcom/samsung/android/allshare/Device$DeviceDomain;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/allshare/Device$DeviceDomain;

    return-object v0
.end method


# virtual methods
.method public enumToString()Ljava/lang/String;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/samsung/android/allshare/Device$DeviceDomain;->enumString:Ljava/lang/String;

    return-object v0
.end method
