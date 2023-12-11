.class public final Landroid/hardware/camera2/params/ExtensionSessionConfiguration;
.super Ljava/lang/Object;
.source "ExtensionSessionConfiguration.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExtensionSessionConfiguration"


# instance fields
.field private mCallback:Landroid/hardware/camera2/CameraExtensionSession$StateCallback;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mExtensionType:I

.field private mOutputs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mPostviewOutput:Landroid/hardware/camera2/params/OutputConfiguration;


# direct methods
.method public constructor <init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$StateCallback;)V
    .registers 6
    .param p1, "extension"    # I
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Landroid/hardware/camera2/CameraExtensionSession$StateCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/hardware/camera2/CameraExtensionSession$StateCallback;",
            ")V"
        }
    .end annotation

    .line 51
    .local p2, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mPostviewOutput:Landroid/hardware/camera2/params/OutputConfiguration;

    .line 37
    iput-object v0, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mExecutor:Ljava/util/concurrent/Executor;

    .line 38
    iput-object v0, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mCallback:Landroid/hardware/camera2/CameraExtensionSession$StateCallback;

    .line 52
    iput p1, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mExtensionType:I

    .line 53
    iput-object p2, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mOutputs:Ljava/util/List;

    .line 54
    iput-object p3, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mExecutor:Ljava/util/concurrent/Executor;

    .line 55
    iput-object p4, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mCallback:Landroid/hardware/camera2/CameraExtensionSession$StateCallback;

    .line 56
    return-void
.end method


# virtual methods
.method public getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 119
    iget-object v0, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getExtension()I
    .registers 2

    .line 65
    iget v0, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mExtensionType:I

    return v0
.end method

.method public getOutputConfigurations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mOutputs:Ljava/util/List;

    return-object v0
.end method

.method public getPostviewOutputConfiguration()Landroid/hardware/camera2/params/OutputConfiguration;
    .registers 2

    .line 87
    iget-object v0, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mPostviewOutput:Landroid/hardware/camera2/params/OutputConfiguration;

    return-object v0
.end method

.method public getStateCallback()Landroid/hardware/camera2/CameraExtensionSession$StateCallback;
    .registers 2

    .line 109
    iget-object v0, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mCallback:Landroid/hardware/camera2/CameraExtensionSession$StateCallback;

    return-object v0
.end method

.method public setPostviewOutputConfiguration(Landroid/hardware/camera2/params/OutputConfiguration;)V
    .registers 2
    .param p1, "postviewOutput"    # Landroid/hardware/camera2/params/OutputConfiguration;

    .line 76
    iput-object p1, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mPostviewOutput:Landroid/hardware/camera2/params/OutputConfiguration;

    .line 77
    return-void
.end method
