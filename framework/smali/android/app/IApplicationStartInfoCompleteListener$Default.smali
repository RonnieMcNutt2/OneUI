.class public Landroid/app/IApplicationStartInfoCompleteListener$Default;
.super Ljava/lang/Object;
.source "IApplicationStartInfoCompleteListener.java"

# interfaces
.implements Landroid/app/IApplicationStartInfoCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IApplicationStartInfoCompleteListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public onApplicationStartInfoComplete(Landroid/app/ApplicationStartInfo;)V
    .registers 2
    .param p1, "applicationStartInfo"    # Landroid/app/ApplicationStartInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method
