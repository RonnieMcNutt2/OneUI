.class public interface abstract Landroid/hardware/tv/tuner/IDescrambler;
.super Ljava/lang/Object;
.source "IDescrambler.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/IDescrambler$Stub;,
        Landroid/hardware/tv/tuner/IDescrambler$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;

.field public static final HASH:Ljava/lang/String; = "f8d74c149f04e76b6d622db2bd8e465dae24b08c"

.field public static final VERSION:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 307
    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "android$hardware$tv$tuner$IDescrambler"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/tv/tuner/IDescrambler;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract addPid(Landroid/hardware/tv/tuner/DemuxPid;Landroid/hardware/tv/tuner/IFilter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract close()V
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

.method public abstract removePid(Landroid/hardware/tv/tuner/DemuxPid;Landroid/hardware/tv/tuner/IFilter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setDemuxSource(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setKeyToken([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
