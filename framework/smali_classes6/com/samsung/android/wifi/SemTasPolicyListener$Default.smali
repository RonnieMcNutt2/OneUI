.class public Lcom/samsung/android/wifi/SemTasPolicyListener$Default;
.super Ljava/lang/Object;
.source "SemTasPolicyListener.java"

# interfaces
.implements Lcom/samsung/android/wifi/SemTasPolicyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/SemTasPolicyListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 15
    const/4 v0, 0x0

    return-object v0
.end method

.method public onTasPolicyChanged(II)V
    .registers 3
    .param p1, "newTasPolicy"    # I
    .param p2, "windowSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    return-void
.end method
