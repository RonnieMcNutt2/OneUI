.class public interface abstract Landroid/hardware/biometrics/common/ICancellationSignal;
.super Ljava/lang/Object;
.source "ICancellationSignal.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/common/ICancellationSignal$Stub;,
        Landroid/hardware/biometrics/common/ICancellationSignal$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;

.field public static final HASH:Ljava/lang/String; = "a9ebb97f5abea1dc6800b69d821ef61944e80e65"

.field public static final VERSION:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 206
    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "android$hardware$biometrics$common$ICancellationSignal"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/biometrics/common/ICancellationSignal;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract cancel()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

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
