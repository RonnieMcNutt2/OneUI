.class public final synthetic Landroid/app/ContextImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ContextImpl$$ExternalSyntheticLambda0;->f$0:Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;

    iput p2, p0, Landroid/app/ContextImpl$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/app/ContextImpl$$ExternalSyntheticLambda0;->f$0:Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;

    iget v1, p0, Landroid/app/ContextImpl$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->lambda$notifyOnDeviceChangedListeners$0(Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;I)V

    return-void
.end method
