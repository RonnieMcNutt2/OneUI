.class Landroid/app/WallpaperManager$WallpaperSetCompletion;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WallpaperSetCompletion"
.end annotation


# instance fields
.field final mLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>(Landroid/app/WallpaperManager;)V
    .registers 3

    .line 4943
    iput-object p1, p0, Landroid/app/WallpaperManager$WallpaperSetCompletion;->this$0:Landroid/app/WallpaperManager;

    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    .line 4944
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Landroid/app/WallpaperManager$WallpaperSetCompletion;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 4945
    return-void
.end method


# virtual methods
.method public onSemBackupStatusChanged(III)V
    .registers 5
    .param p1, "which"    # I
    .param p2, "status"    # I
    .param p3, "key"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5003
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetsGlobals()Landroid/app/WallpaperManager$Globals;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/WallpaperManager$Globals;->onSemBackupStatusChanged(III)V

    .line 5004
    return-void
.end method

.method public onSemMultipackApplied(I)V
    .registers 2
    .param p1, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4976
    return-void
.end method

.method public onSemWallpaperChanged(II)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4971
    return-void
.end method

.method public onSemWallpaperColorsAnalysisRequested(II)V
    .registers 3
    .param p1, "which"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4997
    return-void
.end method

.method public onSemWallpaperColorsChanged(Landroid/app/SemWallpaperColors;II)V
    .registers 5
    .param p1, "colors"    # Landroid/app/SemWallpaperColors;
    .param p2, "which"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4990
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetsGlobals()Landroid/app/WallpaperManager$Globals;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/WallpaperManager$Globals;->onSemWallpaperColorsChanged(Landroid/app/SemWallpaperColors;II)V

    .line 4991
    return-void
.end method

.method public onWallpaperChanged()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4964
    iget-object v0, p0, Landroid/app/WallpaperManager$WallpaperSetCompletion;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4965
    return-void
.end method

.method public onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V
    .registers 5
    .param p1, "colors"    # Landroid/app/WallpaperColors;
    .param p2, "which"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4982
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetsGlobals()Landroid/app/WallpaperManager$Globals;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/WallpaperManager$Globals;->onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V

    .line 4983
    return-void
.end method

.method public waitForCompletion()V
    .registers 5

    .line 4949
    :try_start_0
    iget-object v0, p0, Landroid/app/WallpaperManager$WallpaperSetCompletion;->mLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 4950
    .local v0, "completed":Z
    if-eqz v0, :cond_16

    .line 4951
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Wallpaper set completion."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 4953
    :cond_16
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Timeout waiting for wallpaper set completion!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_1f} :catch_20

    .line 4959
    .end local v0    # "completed":Z
    :goto_1f
    goto :goto_21

    .line 4955
    :catch_20
    move-exception v0

    .line 4960
    :goto_21
    return-void
.end method
