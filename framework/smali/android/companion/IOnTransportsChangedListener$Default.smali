.class public Landroid/companion/IOnTransportsChangedListener$Default;
.super Ljava/lang/Object;
.source "IOnTransportsChangedListener.java"

# interfaces
.implements Landroid/companion/IOnTransportsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/IOnTransportsChangedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 16
    const/4 v0, 0x0

    return-object v0
.end method

.method public onTransportsChanged(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    .local p1, "associations":Ljava/util/List;, "Ljava/util/List<Landroid/companion/AssociationInfo;>;"
    return-void
.end method
