.class public Lcom/samsung/android/sepunion/IDeviceInfoManager$Default;
.super Ljava/lang/Object;
.source "IDeviceInfoManager.java"

# interfaces
.implements Lcom/samsung/android/sepunion/IDeviceInfoManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sepunion/IDeviceInfoManager;
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

    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public clearPendingIntentAsUser(Ljava/lang/String;I)V
    .registers 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    return-void
.end method

.method public getNumPendingIntentAsUser(ILjava/lang/String;I)I
    .registers 5
    .param p1, "type"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public registerPendingIntent(Landroid/content/IntentFilter;Landroid/app/PendingIntent;ILjava/util/List;Ljava/lang/String;I)V
    .registers 7
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "flag"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;
    .param p6, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IntentFilter;",
            "Landroid/app/PendingIntent;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    .local p4, "conditions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public registerPendingIntentForCustomEventAsUser(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/os/Bundle;Ljava/lang/String;I)V
    .registers 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public registerPendingIntentForIntentAsUser(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .registers 5
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public registerPendingIntentForIntentForAllUsers(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .registers 5
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public registerPendingIntentForUriAsUser(Landroid/net/Uri;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method

.method public unregisterPendingIntent(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .registers 5
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public unregisterPendingIntentForCustomEventAsUser(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/os/Bundle;Ljava/lang/String;I)V
    .registers 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public unregisterPendingIntentForIntentAsUser(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .registers 5
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public unregisterPendingIntentForUriAsUser(Landroid/net/Uri;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method
