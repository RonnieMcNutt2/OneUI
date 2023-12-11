.class public Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;
.super Ljava/lang/Object;
.source "SemWifiApWhiteList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/SemWifiApWhiteList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WhiteList"
.end annotation


# instance fields
.field private mEnable:Z

.field private mMac:Ljava/lang/String;

.field private mName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;->mMac:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;->mName:Ljava/lang/String;

    .line 45
    iput-boolean p3, p0, Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;->mEnable:Z

    .line 46
    return-void
.end method


# virtual methods
.method public getEnable()Z
    .registers 2

    .line 70
    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;->mEnable:Z

    return v0
.end method

.method public getMac()Ljava/lang/String;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;->mMac:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public setEnable(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 65
    iput-boolean p1, p0, Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;->mEnable:Z

    .line 66
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;->mName:Ljava/lang/String;

    .line 51
    return-void
.end method
