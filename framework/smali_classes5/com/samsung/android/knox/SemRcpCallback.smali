.class public abstract Lcom/samsung/android/knox/SemRcpCallback;
.super Ljava/lang/Object;
.source "SemRcpCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/SemRcpCallback$SubSemRcpCallback;
    }
.end annotation


# instance fields
.field private s:Lcom/samsung/android/knox/SemIRCPCallback;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/samsung/android/knox/SemRcpCallback$SubSemRcpCallback;

    invoke-direct {v0, p0, p0}, Lcom/samsung/android/knox/SemRcpCallback$SubSemRcpCallback;-><init>(Lcom/samsung/android/knox/SemRcpCallback;Lcom/samsung/android/knox/SemRcpCallback;)V

    iput-object v0, p0, Lcom/samsung/android/knox/SemRcpCallback;->s:Lcom/samsung/android/knox/SemIRCPCallback;

    .line 17
    return-void
.end method


# virtual methods
.method public getChild()Lcom/samsung/android/knox/SemIRCPCallback;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/samsung/android/knox/SemRcpCallback;->s:Lcom/samsung/android/knox/SemIRCPCallback;

    return-object v0
.end method

.method public abstract onComplete(Ljava/util/List;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation
.end method

.method public abstract onDone(Ljava/lang/String;I)V
.end method

.method public abstract onFail(Ljava/lang/String;II)V
.end method

.method public abstract onProgress(Ljava/lang/String;II)V
.end method
