.class Landroid/view/Choreographer$1;
.super Ljava/lang/ThreadLocal;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Choreographer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Landroid/view/Choreographer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 161
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Landroid/view/Choreographer;
    .registers 5

    .line 164
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 165
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_17

    .line 168
    new-instance v1, Landroid/view/Choreographer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Landroid/view/Choreographer;-><init>(Landroid/os/Looper;ILandroid/view/Choreographer-IA;)V

    .line 169
    .local v1, "choreographer":Landroid/view/Choreographer;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_16

    .line 170
    invoke-static {v1}, Landroid/view/Choreographer;->-$$Nest$sfputmMainInstance(Landroid/view/Choreographer;)V

    .line 172
    :cond_16
    return-object v1

    .line 166
    .end local v1    # "choreographer":Landroid/view/Choreographer;
    :cond_17
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The current thread must have a looper!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    .line 161
    invoke-virtual {p0}, Landroid/view/Choreographer$1;->initialValue()Landroid/view/Choreographer;

    move-result-object v0

    return-object v0
.end method
