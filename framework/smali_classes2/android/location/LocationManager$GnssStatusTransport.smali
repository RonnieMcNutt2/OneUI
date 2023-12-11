.class Landroid/location/LocationManager$GnssStatusTransport;
.super Landroid/location/IGnssStatusListener$Stub;
.source "LocationManager.java"

# interfaces
.implements Lcom/android/internal/listeners/ListenerTransport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GnssStatusTransport"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/location/IGnssStatusListener$Stub;",
        "Lcom/android/internal/listeners/ListenerTransport<",
        "Landroid/location/GnssStatus$Callback;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAttributionTag:Ljava/lang/String;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private volatile mListener:Landroid/location/GnssStatus$Callback;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Landroid/content/Context;Landroid/location/GnssStatus$Callback;)V
    .registers 8
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "listener"    # Landroid/location/GnssStatus$Callback;

    .line 3367
    invoke-direct {p0}, Landroid/location/IGnssStatusListener$Stub;-><init>()V

    .line 3368
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    move v2, v0

    goto :goto_a

    :cond_9
    move v2, v1

    :goto_a
    const-string v3, "invalid null executor"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3369
    if-eqz p3, :cond_12

    goto :goto_13

    :cond_12
    move v0, v1

    :goto_13
    const-string v1, "invalid null callback"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3370
    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 3371
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusTransport;->mPackageName:Ljava/lang/String;

    .line 3372
    invoke-virtual {p2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusTransport;->mAttributionTag:Ljava/lang/String;

    .line 3373
    iput-object p3, p0, Landroid/location/LocationManager$GnssStatusTransport;->mListener:Landroid/location/GnssStatus$Callback;

    .line 3374
    return-void
.end method

.method static synthetic lambda$onFirstFix$0(ILandroid/location/GnssStatus$Callback;)V
    .registers 2
    .param p0, "ttff"    # I
    .param p1, "listener"    # Landroid/location/GnssStatus$Callback;

    .line 3406
    invoke-virtual {p1, p0}, Landroid/location/GnssStatus$Callback;->onFirstFix(I)V

    return-void
.end method

.method static synthetic lambda$onSvStatusChanged$1(Landroid/location/GnssStatus;Landroid/location/GnssStatus$Callback;)V
    .registers 2
    .param p0, "gnssStatus"    # Landroid/location/GnssStatus;
    .param p1, "listener"    # Landroid/location/GnssStatus$Callback;

    .line 3412
    invoke-virtual {p1, p0}, Landroid/location/GnssStatus$Callback;->onSatelliteStatusChanged(Landroid/location/GnssStatus;)V

    return-void
.end method


# virtual methods
.method public getAttributionTag()Ljava/lang/String;
    .registers 2

    .line 3381
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusTransport;->mAttributionTag:Ljava/lang/String;

    return-object v0
.end method

.method public getListener()Landroid/location/GnssStatus$Callback;
    .registers 2

    .line 3391
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusTransport;->mListener:Landroid/location/GnssStatus$Callback;

    return-object v0
.end method

.method public bridge synthetic getListener()Ljava/lang/Object;
    .registers 2

    .line 3358
    invoke-virtual {p0}, Landroid/location/LocationManager$GnssStatusTransport;->getListener()Landroid/location/GnssStatus$Callback;

    move-result-object v0

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .registers 2

    .line 3377
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusTransport;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public onFirstFix(I)V
    .registers 4
    .param p1, "ttff"    # I

    .line 3406
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/location/LocationManager$GnssStatusTransport$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Landroid/location/LocationManager$GnssStatusTransport$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Landroid/location/LocationManager$GnssStatusTransport;->execute(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 3408
    return-void
.end method

.method public onGnssStarted()V
    .registers 3

    .line 3396
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/location/LocationManager$GnssStatusTransport$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/location/LocationManager$GnssStatusTransport$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, v0, v1}, Landroid/location/LocationManager$GnssStatusTransport;->execute(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 3397
    return-void
.end method

.method public onGnssStopped()V
    .registers 3

    .line 3401
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/location/LocationManager$GnssStatusTransport$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/location/LocationManager$GnssStatusTransport$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v0, v1}, Landroid/location/LocationManager$GnssStatusTransport;->execute(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 3402
    return-void
.end method

.method public onSvStatusChanged(Landroid/location/GnssStatus;)V
    .registers 4
    .param p1, "gnssStatus"    # Landroid/location/GnssStatus;

    .line 3412
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/location/LocationManager$GnssStatusTransport$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroid/location/LocationManager$GnssStatusTransport$$ExternalSyntheticLambda0;-><init>(Landroid/location/GnssStatus;)V

    invoke-virtual {p0, v0, v1}, Landroid/location/LocationManager$GnssStatusTransport;->execute(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 3413
    return-void
.end method

.method public unregister()V
    .registers 2

    .line 3386
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusTransport;->mListener:Landroid/location/GnssStatus$Callback;

    .line 3387
    return-void
.end method
