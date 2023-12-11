.class Lcom/samsung/android/sume/core/filter/ContentFilter$1;
.super Ljava/lang/Object;
.source "ContentFilter.java"

# interfaces
.implements Lcom/samsung/android/sume/core/functional/PlaceHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/core/filter/ContentFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/sume/core/functional/PlaceHolder<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private buf:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/sume/core/filter/ContentFilter;


# direct methods
.method constructor <init>(Lcom/samsung/android/sume/core/filter/ContentFilter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/sume/core/filter/ContentFilter;

    .line 27
    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/ContentFilter$1;->this$0:Lcom/samsung/android/sume/core/filter/ContentFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/ContentFilter$1;->buf:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isNotEmpty()Z
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/ContentFilter$1;->buf:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;)V
    .registers 2

    .line 27
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/filter/ContentFilter$1;->put(Ljava/lang/String;)V

    return-void
.end method

.method public put(Ljava/lang/String;)V
    .registers 2
    .param p1, "instance"    # Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/ContentFilter$1;->buf:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public bridge synthetic reset()Ljava/lang/Object;
    .registers 2

    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/filter/ContentFilter$1;->reset()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reset()Ljava/lang/String;
    .registers 3

    .line 36
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/ContentFilter$1;->buf:Ljava/lang/String;

    .line 37
    .local v0, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sume/core/filter/ContentFilter$1;->buf:Ljava/lang/String;

    .line 38
    return-object v0
.end method
