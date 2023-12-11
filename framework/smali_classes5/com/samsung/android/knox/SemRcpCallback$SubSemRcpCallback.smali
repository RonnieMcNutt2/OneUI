.class public Lcom/samsung/android/knox/SemRcpCallback$SubSemRcpCallback;
.super Lcom/samsung/android/knox/SemIRCPCallback$Stub;
.source "SemRcpCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/SemRcpCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SubSemRcpCallback"
.end annotation


# instance fields
.field parent:Lcom/samsung/android/knox/SemRcpCallback;

.field final synthetic this$0:Lcom/samsung/android/knox/SemRcpCallback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/SemRcpCallback;Lcom/samsung/android/knox/SemRcpCallback;)V
    .registers 4
    .param p1, "this$0"    # Lcom/samsung/android/knox/SemRcpCallback;
    .param p2, "SemRcpCallback"    # Lcom/samsung/android/knox/SemRcpCallback;

    .line 28
    iput-object p1, p0, Lcom/samsung/android/knox/SemRcpCallback$SubSemRcpCallback;->this$0:Lcom/samsung/android/knox/SemRcpCallback;

    invoke-direct {p0}, Lcom/samsung/android/knox/SemIRCPCallback$Stub;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/SemRcpCallback$SubSemRcpCallback;->parent:Lcom/samsung/android/knox/SemRcpCallback;

    .line 29
    iput-object p2, p0, Lcom/samsung/android/knox/SemRcpCallback$SubSemRcpCallback;->parent:Lcom/samsung/android/knox/SemRcpCallback;

    .line 30
    return-void
.end method


# virtual methods
.method public onComplete(Ljava/util/List;II)V
    .registers 5
    .param p2, "destinationUserId"    # I
    .param p3, "successCnt"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 35
    .local p1, "srcPathsOrig":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/android/knox/SemRcpCallback$SubSemRcpCallback;->parent:Lcom/samsung/android/knox/SemRcpCallback;

    if-eqz v0, :cond_7

    .line 36
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/knox/SemRcpCallback;->onComplete(Ljava/util/List;II)V

    .line 37
    :cond_7
    return-void
.end method

.method public onDone(Ljava/lang/String;I)V
    .registers 4
    .param p1, "srcPathsOrig"    # Ljava/lang/String;
    .param p2, "destinationUserId"    # I

    .line 41
    iget-object v0, p0, Lcom/samsung/android/knox/SemRcpCallback$SubSemRcpCallback;->parent:Lcom/samsung/android/knox/SemRcpCallback;

    if-eqz v0, :cond_7

    .line 42
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/SemRcpCallback;->onDone(Ljava/lang/String;I)V

    .line 43
    :cond_7
    return-void
.end method

.method public onFail(Ljava/lang/String;II)V
    .registers 5
    .param p1, "srcPathsOrig"    # Ljava/lang/String;
    .param p2, "destinationUserId"    # I
    .param p3, "errorCode"    # I

    .line 48
    iget-object v0, p0, Lcom/samsung/android/knox/SemRcpCallback$SubSemRcpCallback;->parent:Lcom/samsung/android/knox/SemRcpCallback;

    if-eqz v0, :cond_7

    .line 49
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/knox/SemRcpCallback;->onFail(Ljava/lang/String;II)V

    .line 50
    :cond_7
    return-void
.end method

.method public onProgress(Ljava/lang/String;II)V
    .registers 5
    .param p1, "srcPathsOrig"    # Ljava/lang/String;
    .param p2, "destinationUserId"    # I
    .param p3, "progress"    # I

    .line 55
    iget-object v0, p0, Lcom/samsung/android/knox/SemRcpCallback$SubSemRcpCallback;->parent:Lcom/samsung/android/knox/SemRcpCallback;

    if-eqz v0, :cond_7

    .line 56
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/knox/SemRcpCallback;->onProgress(Ljava/lang/String;II)V

    .line 58
    :cond_7
    return-void
.end method
