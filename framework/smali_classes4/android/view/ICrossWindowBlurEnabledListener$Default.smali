.class public Landroid/view/ICrossWindowBlurEnabledListener$Default;
.super Ljava/lang/Object;
.source "ICrossWindowBlurEnabledListener.java"

# interfaces
.implements Landroid/view/ICrossWindowBlurEnabledListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ICrossWindowBlurEnabledListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCrossWindowBlurEnabledChanged(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method
