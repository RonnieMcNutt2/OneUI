.class public Lcom/android/internal/compat/AndroidBuildClassifier;
.super Ljava/lang/Object;
.source "AndroidBuildClassifier.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDebuggableBuild()Z
    .registers 2

    .line 28
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    return v0
.end method

.method public isFinalBuild()Z
    .registers 3

    .line 32
    const-string v0, "REL"

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public platformTargetSdk()I
    .registers 2

    .line 39
    invoke-virtual {p0}, Lcom/android/internal/compat/AndroidBuildClassifier;->isFinalBuild()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0

    .line 42
    :cond_9
    const/16 v0, 0x2710

    return v0
.end method
