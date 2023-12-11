.class Lcom/samsung/android/multicontrol/SemMultiControlManager$MultiControlDeathCheckerDelegate;
.super Lcom/samsung/android/multicontrol/IMultiControlDeathChecker$Stub;
.source "SemMultiControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multicontrol/SemMultiControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultiControlDeathCheckerDelegate"
.end annotation


# instance fields
.field private mListener:Lcom/samsung/android/multicontrol/SemMultiControlManager$MultiControlDeathChecker;


# direct methods
.method constructor <init>(Lcom/samsung/android/multicontrol/SemMultiControlManager$MultiControlDeathChecker;)V
    .registers 2
    .param p1, "listener"    # Lcom/samsung/android/multicontrol/SemMultiControlManager$MultiControlDeathChecker;

    .line 172
    invoke-direct {p0}, Lcom/samsung/android/multicontrol/IMultiControlDeathChecker$Stub;-><init>()V

    .line 173
    iput-object p1, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager$MultiControlDeathCheckerDelegate;->mListener:Lcom/samsung/android/multicontrol/SemMultiControlManager$MultiControlDeathChecker;

    .line 174
    return-void
.end method


# virtual methods
.method nullOutListenerLocked()V
    .registers 2

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager$MultiControlDeathCheckerDelegate;->mListener:Lcom/samsung/android/multicontrol/SemMultiControlManager$MultiControlDeathChecker;

    .line 186
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 179
    invoke-static {}, Lcom/samsung/android/multicontrol/SemMultiControlManager;->-$$Nest$sfgetsLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 180
    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager$MultiControlDeathCheckerDelegate;->mListener:Lcom/samsung/android/multicontrol/SemMultiControlManager$MultiControlDeathChecker;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 181
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw v1
.end method
