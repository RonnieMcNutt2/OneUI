.class public Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;
.super Ljava/lang/Object;
.source "SemWifiApSmartWhiteList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmartWhiteList"
.end annotation


# instance fields
.field private mDeviceType:I

.field private mMac:Ljava/lang/String;

.field private mName:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDeviceType(Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->mDeviceType:I

    return p0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "mDeviceType"    # I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->mDeviceType:I

    .line 34
    iput-object p1, p0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->mMac:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->mName:Ljava/lang/String;

    .line 36
    iput p3, p0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->mDeviceType:I

    .line 37
    return-void
.end method


# virtual methods
.method public getDeviceType()I
    .registers 2

    .line 55
    iget v0, p0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->mDeviceType:I

    return v0
.end method

.method public getMac()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->mMac:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->mName:Ljava/lang/String;

    .line 41
    return-void
.end method
