.class public final Landroid/hardware/usb/UsbPortStatus$Builder;
.super Ljava/lang/Object;
.source "UsbPortStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/UsbPortStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mComplianceWarnings:[I

.field private mContaminantDetectionStatus:I

.field private mContaminantProtectionStatus:I

.field private mCurrentDataRole:I

.field private mCurrentMode:I

.field private mCurrentPowerRole:I

.field private mDisplayPortAltModeInfo:Landroid/hardware/usb/DisplayPortAltModeInfo;

.field private mPlugState:I

.field private mPowerBrickConnectionStatus:I

.field private mPowerTransferLimited:Z

.field private mSupportedRoleCombinations:I

.field private mUsbDataStatus:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 732
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mCurrentMode:I

    .line 733
    iput v0, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mCurrentPowerRole:I

    .line 734
    iput v0, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mCurrentDataRole:I

    .line 735
    iput v0, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mContaminantProtectionStatus:I

    .line 736
    iput v0, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mContaminantDetectionStatus:I

    .line 737
    iput v0, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mUsbDataStatus:I

    .line 738
    iput v0, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mPowerBrickConnectionStatus:I

    .line 739
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mComplianceWarnings:[I

    .line 740
    iput v0, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mPlugState:I

    .line 741
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mDisplayPortAltModeInfo:Landroid/hardware/usb/DisplayPortAltModeInfo;

    .line 742
    return-void
.end method


# virtual methods
.method public build()Landroid/hardware/usb/UsbPortStatus;
    .registers 15

    .line 868
    new-instance v13, Landroid/hardware/usb/UsbPortStatus;

    iget v1, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mCurrentMode:I

    iget v2, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mCurrentPowerRole:I

    iget v3, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mCurrentDataRole:I

    iget v4, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mSupportedRoleCombinations:I

    iget v5, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mContaminantProtectionStatus:I

    iget v6, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mContaminantDetectionStatus:I

    iget v7, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mUsbDataStatus:I

    iget-boolean v8, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mPowerTransferLimited:Z

    iget v9, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mPowerBrickConnectionStatus:I

    iget-object v10, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mComplianceWarnings:[I

    iget v11, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mPlugState:I

    iget-object v12, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mDisplayPortAltModeInfo:Landroid/hardware/usb/DisplayPortAltModeInfo;

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Landroid/hardware/usb/UsbPortStatus;-><init>(IIIIIIIZI[IILandroid/hardware/usb/DisplayPortAltModeInfo;)V

    .line 873
    .local v0, "status":Landroid/hardware/usb/UsbPortStatus;
    return-object v0
.end method

.method public setComplianceWarnings([I)Landroid/hardware/usb/UsbPortStatus$Builder;
    .registers 3
    .param p1, "complianceWarnings"    # [I

    .line 835
    if-nez p1, :cond_6

    const/4 v0, 0x0

    new-array v0, v0, [I

    goto :goto_7

    .line 836
    :cond_6
    move-object v0, p1

    :goto_7
    iput-object v0, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mComplianceWarnings:[I

    .line 837
    return-object p0
.end method

.method public setContaminantStatus(II)Landroid/hardware/usb/UsbPortStatus$Builder;
    .registers 3
    .param p1, "contaminantProtectionStatus"    # I
    .param p2, "contaminantDetectionStatus"    # I

    .line 788
    iput p1, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mContaminantProtectionStatus:I

    .line 789
    iput p2, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mContaminantDetectionStatus:I

    .line 790
    return-object p0
.end method

.method public setCurrentMode(I)Landroid/hardware/usb/UsbPortStatus$Builder;
    .registers 2
    .param p1, "currentMode"    # I

    .line 751
    iput p1, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mCurrentMode:I

    .line 752
    return-object p0
.end method

.method public setCurrentRoles(II)Landroid/hardware/usb/UsbPortStatus$Builder;
    .registers 3
    .param p1, "currentPowerRole"    # I
    .param p2, "currentDataRole"    # I

    .line 763
    iput p1, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mCurrentPowerRole:I

    .line 764
    iput p2, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mCurrentDataRole:I

    .line 765
    return-object p0
.end method

.method public setDisplayPortAltModeInfo(Landroid/hardware/usb/DisplayPortAltModeInfo;)Landroid/hardware/usb/UsbPortStatus$Builder;
    .registers 2
    .param p1, "displayPortAltModeInfo"    # Landroid/hardware/usb/DisplayPortAltModeInfo;

    .line 859
    iput-object p1, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mDisplayPortAltModeInfo:Landroid/hardware/usb/DisplayPortAltModeInfo;

    .line 860
    return-object p0
.end method

.method public setPlugState(I)Landroid/hardware/usb/UsbPortStatus$Builder;
    .registers 2
    .param p1, "plugState"    # I

    .line 847
    iput p1, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mPlugState:I

    .line 848
    return-object p0
.end method

.method public setPowerBrickConnectionStatus(I)Landroid/hardware/usb/UsbPortStatus$Builder;
    .registers 2
    .param p1, "powerBrickConnectionStatus"    # I

    .line 823
    iput p1, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mPowerBrickConnectionStatus:I

    .line 824
    return-object p0
.end method

.method public setPowerTransferLimited(Z)Landroid/hardware/usb/UsbPortStatus$Builder;
    .registers 2
    .param p1, "powerTransferLimited"    # Z

    .line 800
    iput-boolean p1, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mPowerTransferLimited:Z

    .line 801
    return-object p0
.end method

.method public setSupportedRoleCombinations(I)Landroid/hardware/usb/UsbPortStatus$Builder;
    .registers 2
    .param p1, "supportedRoleCombinations"    # I

    .line 775
    iput p1, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mSupportedRoleCombinations:I

    .line 776
    return-object p0
.end method

.method public setUsbDataStatus(I)Landroid/hardware/usb/UsbPortStatus$Builder;
    .registers 2
    .param p1, "usbDataStatus"    # I

    .line 811
    iput p1, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mUsbDataStatus:I

    .line 812
    return-object p0
.end method
