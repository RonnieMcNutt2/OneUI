.class public interface abstract Landroid/hardware/gnss/IGnssCallback;
.super Ljava/lang/Object;
.source "IGnssCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gnss/IGnssCallback$GnssSystemInfo;,
        Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;,
        Landroid/hardware/gnss/IGnssCallback$GnssSvFlags;,
        Landroid/hardware/gnss/IGnssCallback$GnssStatusValue;,
        Landroid/hardware/gnss/IGnssCallback$Stub;,
        Landroid/hardware/gnss/IGnssCallback$Default;
    }
.end annotation


# static fields
.field public static final CAPABILITY_ANTENNA_INFO:I = 0x800

.field public static final CAPABILITY_CORRELATION_VECTOR:I = 0x1000

.field public static final CAPABILITY_GEOFENCING:I = 0x20

.field public static final CAPABILITY_LOW_POWER_MODE:I = 0x100

.field public static final CAPABILITY_MEASUREMENTS:I = 0x40

.field public static final CAPABILITY_MEASUREMENT_CORRECTIONS:I = 0x400

.field public static final CAPABILITY_MEASUREMENT_CORRECTIONS_FOR_DRIVING:I = 0x4000

.field public static final CAPABILITY_MSA:I = 0x4

.field public static final CAPABILITY_MSB:I = 0x2

.field public static final CAPABILITY_NAV_MESSAGES:I = 0x80

.field public static final CAPABILITY_ON_DEMAND_TIME:I = 0x10

.field public static final CAPABILITY_SATELLITE_BLOCKLIST:I = 0x200

.field public static final CAPABILITY_SATELLITE_PVT:I = 0x2000

.field public static final CAPABILITY_SCHEDULING:I = 0x1

.field public static final CAPABILITY_SINGLE_SHOT:I = 0x8

.field public static final DESCRIPTOR:Ljava/lang/String;

.field public static final HASH:Ljava/lang/String; = "fc957f1d3d261d065ff5e5415f2d21caa79c310f"

.field public static final VERSION:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 523
    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "android$hardware$gnss$IGnssCallback"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/gnss/IGnssCallback;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getInterfaceHash()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getInterfaceVersion()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract gnssAcquireWakelockCb()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract gnssLocationCb(Landroid/hardware/gnss/GnssLocation;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract gnssNmeaCb(JLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract gnssReleaseWakelockCb()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract gnssRequestLocationCb(ZZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract gnssRequestTimeCb()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract gnssSetCapabilitiesCb(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract gnssSetSystemInfoCb(Landroid/hardware/gnss/IGnssCallback$GnssSystemInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract gnssStatusCb(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract gnssSvStatusCb([Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
