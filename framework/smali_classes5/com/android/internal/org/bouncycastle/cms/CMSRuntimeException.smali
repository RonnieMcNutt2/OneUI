.class public Lcom/android/internal/org/bouncycastle/cms/CMSRuntimeException;
.super Ljava/lang/RuntimeException;
.source "CMSRuntimeException.java"


# instance fields
.field e:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 22
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 24
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cms/CMSRuntimeException;->e:Ljava/lang/Exception;

    .line 25
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSRuntimeException;->e:Ljava/lang/Exception;

    return-object v0
.end method

.method public getUnderlyingException()Ljava/lang/Exception;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSRuntimeException;->e:Ljava/lang/Exception;

    return-object v0
.end method
