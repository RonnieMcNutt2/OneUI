.class public Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.super Ljava/lang/Object;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SubscriptionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnSubscriptionsChangedListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$OnSubscriptionsChangedListenerHandler;
    }
.end annotation


# instance fields
.field private final mExecutor:Lcom/android/internal/telephony/util/HandlerExecutor;


# direct methods
.method static bridge synthetic -$$Nest$fgetmExecutor(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)Lcom/android/internal/telephony/util/HandlerExecutor;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->mExecutor:Lcom/android/internal/telephony/util/HandlerExecutor;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 3

    .line 1413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1414
    new-instance v0, Lcom/android/internal/telephony/util/HandlerExecutor;

    new-instance v1, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$OnSubscriptionsChangedListenerHandler;

    invoke-direct {v1, p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$OnSubscriptionsChangedListenerHandler;-><init>(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/util/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->mExecutor:Lcom/android/internal/telephony/util/HandlerExecutor;

    .line 1415
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .registers 4
    .param p1, "looper"    # Landroid/os/Looper;

    .line 1422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1423
    new-instance v0, Lcom/android/internal/telephony/util/HandlerExecutor;

    new-instance v1, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$OnSubscriptionsChangedListenerHandler;

    invoke-direct {v1, p0, p1}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$OnSubscriptionsChangedListenerHandler;-><init>(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/util/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->mExecutor:Lcom/android/internal/telephony/util/HandlerExecutor;

    .line 1424
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 1448
    const-string v0, "SubscriptionManager"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    return-void
.end method


# virtual methods
.method public getHandlerExecutor()Lcom/android/internal/telephony/util/HandlerExecutor;
    .registers 2

    .line 1410
    iget-object v0, p0, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->mExecutor:Lcom/android/internal/telephony/util/HandlerExecutor;

    return-object v0
.end method

.method public onAddListenerFailed()V
    .registers 3

    .line 1444
    const-string v0, "SubscriptionManager"

    const-string/jumbo v1, "onAddListenerFailed not overridden"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    return-void
.end method

.method public onSubscriptionsChanged()V
    .registers 1

    .line 1433
    return-void
.end method
