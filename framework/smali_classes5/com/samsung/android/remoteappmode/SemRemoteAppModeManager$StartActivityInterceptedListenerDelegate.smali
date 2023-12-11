.class Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListenerDelegate;
.super Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener$Stub;
.source "SemRemoteAppModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StartActivityInterceptedListenerDelegate"
.end annotation


# instance fields
.field private mListener:Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListener;

    .line 688
    invoke-direct {p0}, Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener$Stub;-><init>()V

    .line 689
    iput-object p1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListenerDelegate;->mListener:Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListener;

    .line 690
    return-void
.end method


# virtual methods
.method nullOutListenerLocked()V
    .registers 2

    .line 712
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListenerDelegate;->mListener:Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListener;

    .line 713
    return-void
.end method

.method public onStartActivityIntercepted(Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/pm/ActivityInfo;IZIII)V
    .registers 22
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "activityOptionsBundle"    # Landroid/os/Bundle;
    .param p3, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p4, "interceptedDisplayId"    # I
    .param p5, "isVisibleTask"    # Z
    .param p6, "runningTaskId"    # I
    .param p7, "runningTaskDisplayId"    # I
    .param p8, "interceptReason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 695
    invoke-static {}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->-$$Nest$sfgetsLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 696
    move-object v2, p0

    :try_start_6
    iget-object v0, v2, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListenerDelegate;->mListener:Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListener;

    .line 697
    .local v0, "listener":Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListener;
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_56

    .line 698
    if-eqz v0, :cond_53

    .line 699
    invoke-static {}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStartActivityIntercepted() interceptedDisplayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v12, p4

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", listener="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-interface/range {v3 .. v11}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListener;->onStartActivityIntercepted(Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/pm/ActivityInfo;IZIII)V

    goto :goto_55

    .line 698
    :cond_53
    move/from16 v12, p4

    .line 702
    :goto_55
    return-void

    .line 697
    .end local v0    # "listener":Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListener;
    :catchall_56
    move-exception v0

    move/from16 v12, p4

    :goto_59
    :try_start_59
    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_5b

    throw v0

    :catchall_5b
    move-exception v0

    goto :goto_59
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 706
    invoke-static {}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->-$$Nest$sfgetsLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 707
    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListenerDelegate;->mListener:Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListener;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 708
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw v1
.end method
