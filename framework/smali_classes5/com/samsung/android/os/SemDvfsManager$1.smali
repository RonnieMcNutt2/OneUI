.class Lcom/samsung/android/os/SemDvfsManager$1;
.super Ljava/lang/Object;
.source "SemDvfsManager.java"

# interfaces
.implements Lcom/samsung/android/os/SemDvfsManager$RequestFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/os/SemDvfsManager;->createRequester(Z)Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/os/SemDvfsManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/os/SemDvfsManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/os/SemDvfsManager;

    .line 994
    iput-object p1, p0, Lcom/samsung/android/os/SemDvfsManager$1;->this$0:Lcom/samsung/android/os/SemDvfsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acquire(IILjava/lang/String;I[I)V
    .registers 6
    .param p1, "pid"    # I
    .param p2, "token"    # I
    .param p3, "procName"    # Ljava/lang/String;
    .param p4, "hint"    # I
    .param p5, "list"    # [I

    .line 997
    invoke-static {p1, p2, p3, p4, p5}, Lcom/samsung/android/os/SemDvfsManager;->-$$Nest$smnativeAcquire(IILjava/lang/String;I[I)V

    .line 998
    return-void
.end method

.method public checkHintExist(I)Z
    .registers 3
    .param p1, "hint"    # I

    .line 1026
    invoke-static {p1}, Lcom/samsung/android/os/SemDvfsManager;->-$$Nest$smnativeCheckHintExist(I)Z

    move-result v0

    return v0
.end method

.method public checkResourceExist(I)Z
    .registers 3
    .param p1, "resource"    # I

    .line 1031
    invoke-static {p1}, Lcom/samsung/android/os/SemDvfsManager;->-$$Nest$smnativeCheckResourceExist(I)Z

    move-result v0

    return v0
.end method

.method public checkSysfsIdExist(I)Z
    .registers 3
    .param p1, "sysfsId"    # I

    .line 1022
    invoke-static {p1}, Lcom/samsung/android/os/SemDvfsManager;->-$$Nest$smnativeCheckSysfsIdExist(I)Z

    move-result v0

    return v0
.end method

.method public getSupportedFrequency(II)[I
    .registers 4
    .param p1, "type"    # I
    .param p2, "level"    # I

    .line 1007
    invoke-static {p1, p2}, Lcom/samsung/android/os/SemDvfsManager;->-$$Nest$smnativeGetSupportedFrequency(II)[I

    move-result-object v0

    return-object v0
.end method

.method public release(II)V
    .registers 3
    .param p1, "pid"    # I
    .param p2, "token"    # I

    .line 1002
    invoke-static {p1, p2}, Lcom/samsung/android/os/SemDvfsManager;->-$$Nest$smnativeRelease(II)V

    .line 1003
    return-void
.end method

.method public sysfsRead(I)Ljava/lang/String;
    .registers 3
    .param p1, "sysfsId"    # I

    .line 1017
    invoke-static {p1}, Lcom/samsung/android/os/SemDvfsManager;->-$$Nest$smnativeSysfsRead(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sysfsWrite(ILjava/lang/String;)V
    .registers 3
    .param p1, "sysfsId"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 1012
    invoke-static {p1, p2}, Lcom/samsung/android/os/SemDvfsManager;->-$$Nest$smnativeSysfsWrite(ILjava/lang/String;)V

    .line 1013
    return-void
.end method
