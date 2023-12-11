.class Landroid/hardware/Camera$IAppOpsCallbackWrapper;
.super Lcom/android/internal/app/IAppOpsCallback$Stub;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IAppOpsCallbackWrapper"
.end annotation


# instance fields
.field private final mWeakCamera:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/hardware/Camera;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/hardware/Camera;)V
    .registers 3
    .param p1, "camera"    # Landroid/hardware/Camera;

    .line 1719
    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsCallback$Stub;-><init>()V

    .line 1720
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/hardware/Camera$IAppOpsCallbackWrapper;->mWeakCamera:Ljava/lang/ref/WeakReference;

    .line 1721
    return-void
.end method


# virtual methods
.method public opChanged(IILjava/lang/String;)V
    .registers 5
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 1725
    const/16 v0, 0x1c

    if-ne p1, v0, :cond_11

    .line 1726
    iget-object v0, p0, Landroid/hardware/Camera$IAppOpsCallbackWrapper;->mWeakCamera:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;

    .line 1727
    .local v0, "camera":Landroid/hardware/Camera;
    if-eqz v0, :cond_11

    .line 1728
    invoke-static {v0}, Landroid/hardware/Camera;->-$$Nest$mupdateAppOpsPlayAudio(Landroid/hardware/Camera;)V

    .line 1731
    .end local v0    # "camera":Landroid/hardware/Camera;
    :cond_11
    return-void
.end method
