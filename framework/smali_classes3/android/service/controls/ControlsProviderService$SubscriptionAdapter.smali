.class Landroid/service/controls/ControlsProviderService$SubscriptionAdapter;
.super Landroid/service/controls/IControlsSubscription$Stub;
.source "ControlsProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/controls/ControlsProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SubscriptionAdapter"
.end annotation


# instance fields
.field final mSubscription:Ljava/util/concurrent/Flow$Subscription;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Flow$Subscription;)V
    .registers 2
    .param p1, "s"    # Ljava/util/concurrent/Flow$Subscription;

    .line 493
    invoke-direct {p0}, Landroid/service/controls/IControlsSubscription$Stub;-><init>()V

    .line 494
    iput-object p1, p0, Landroid/service/controls/ControlsProviderService$SubscriptionAdapter;->mSubscription:Ljava/util/concurrent/Flow$Subscription;

    .line 495
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 502
    iget-object v0, p0, Landroid/service/controls/ControlsProviderService$SubscriptionAdapter;->mSubscription:Ljava/util/concurrent/Flow$Subscription;

    invoke-interface {v0}, Ljava/util/concurrent/Flow$Subscription;->cancel()V

    .line 503
    return-void
.end method

.method public request(J)V
    .registers 4
    .param p1, "n"    # J

    .line 498
    iget-object v0, p0, Landroid/service/controls/ControlsProviderService$SubscriptionAdapter;->mSubscription:Ljava/util/concurrent/Flow$Subscription;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/Flow$Subscription;->request(J)V

    .line 499
    return-void
.end method
