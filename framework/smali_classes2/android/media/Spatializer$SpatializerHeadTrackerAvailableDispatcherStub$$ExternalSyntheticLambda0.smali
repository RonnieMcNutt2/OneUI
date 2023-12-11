.class public final synthetic Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/CallbackUtil$CallbackMethod;


# instance fields
.field public final synthetic f$0:Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub$$ExternalSyntheticLambda0;->f$0:Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub;

    iput-boolean p2, p0, Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final callbackMethod(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub$$ExternalSyntheticLambda0;->f$0:Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub;

    iget-boolean v1, p0, Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub$$ExternalSyntheticLambda0;->f$1:Z

    check-cast p1, Landroid/media/Spatializer$OnHeadTrackerAvailableListener;

    invoke-static {v0, v1, p1}, Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub;->$r8$lambda$uN_NcrchKNy7bzpOYrv-DAUIUCw(Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub;ZLandroid/media/Spatializer$OnHeadTrackerAvailableListener;)V

    return-void
.end method
