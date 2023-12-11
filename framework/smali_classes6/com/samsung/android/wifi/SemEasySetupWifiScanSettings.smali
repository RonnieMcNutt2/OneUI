.class public Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;
.super Ljava/lang/Object;
.source "SemEasySetupWifiScanSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_EASY_SETUP_RSSI_BASE:I = -0x37


# instance fields
.field public minRssi:I

.field public pendingIntentForIdlePopup:Landroid/app/PendingIntent;

.field public pendingIntentForSettings:Landroid/app/PendingIntent;

.field public ssidPatterns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 92
    new-instance v0, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;->ssidPatterns:Ljava/util/List;

    .line 54
    const/16 v0, -0x37

    iput v0, p0, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;->minRssi:I

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;)V
    .registers 4
    .param p1, "source"    # Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;->ssidPatterns:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;->ssidPatterns:Ljava/util/List;

    .line 60
    iget-object v0, p1, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;->pendingIntentForIdlePopup:Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;->pendingIntentForIdlePopup:Landroid/app/PendingIntent;

    .line 61
    iget-object v0, p1, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;->pendingIntentForSettings:Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;->pendingIntentForSettings:Landroid/app/PendingIntent;

    .line 62
    iget v0, p1, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;->minRssi:I

    iput v0, p0, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;->minRssi:I

    .line 63
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public isActiveDeviceDetectionInIdle()Z
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;->ssidPatterns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;->pendingIntentForIdlePopup:Landroid/app/PendingIntent;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isActiveSeparateNetworkList()Z
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;->ssidPatterns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;->pendingIntentForSettings:Landroid/app/PendingIntent;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 84
    iget-object v0, p0, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;->ssidPatterns:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 85
    iget-object v0, p0, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;->pendingIntentForIdlePopup:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 86
    iget-object v0, p0, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;->pendingIntentForSettings:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 87
    iget v0, p0, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;->minRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    return-void
.end method
