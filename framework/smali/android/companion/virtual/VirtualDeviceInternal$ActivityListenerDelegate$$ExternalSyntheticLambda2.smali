.class public final synthetic Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;ILandroid/content/ComponentName;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate$$ExternalSyntheticLambda2;->f$0:Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;

    iput p2, p0, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate$$ExternalSyntheticLambda2;->f$2:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate$$ExternalSyntheticLambda2;->f$0:Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;

    iget v1, p0, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate$$ExternalSyntheticLambda2;->f$1:I

    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate$$ExternalSyntheticLambda2;->f$2:Landroid/content/ComponentName;

    invoke-static {v0, v1, v2}, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;->$r8$lambda$2Qmx8k3rQIK0FsOs7pq3i0X8U0Q(Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;ILandroid/content/ComponentName;)V

    return-void
.end method
