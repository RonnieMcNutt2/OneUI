.class Landroid/media/MediaMetrics$1;
.super Ljava/lang/Object;
.source "MediaMetrics.java"

# interfaces
.implements Landroid/media/MediaMetrics$Key;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaMetrics;->createKey(Ljava/lang/String;Ljava/lang/Class;)Landroid/media/MediaMetrics$Key;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/media/MediaMetrics$Key<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 250
    iput-object p1, p0, Landroid/media/MediaMetrics$1;->val$name:Ljava/lang/String;

    iput-object p2, p0, Landroid/media/MediaMetrics$1;->val$type:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput-object p1, p0, Landroid/media/MediaMetrics$1;->mName:Ljava/lang/String;

    .line 252
    iput-object p2, p0, Landroid/media/MediaMetrics$1;->mType:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 271
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 272
    return v0

    .line 274
    :cond_4
    instance-of v1, p1, Landroid/media/MediaMetrics$Key;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 275
    return v2

    .line 277
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/media/MediaMetrics$Key;

    .line 278
    .local v1, "other":Landroid/media/MediaMetrics$Key;, "Landroid/media/MediaMetrics$Key<*>;"
    iget-object v3, p0, Landroid/media/MediaMetrics$1;->mName:Ljava/lang/String;

    invoke-interface {v1}, Landroid/media/MediaMetrics$Key;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    iget-object v3, p0, Landroid/media/MediaMetrics$1;->mType:Ljava/lang/Class;

    invoke-interface {v1}, Landroid/media/MediaMetrics$Key;->getValueClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_27

    :cond_26
    move v0, v2

    :goto_27
    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 257
    iget-object v0, p0, Landroid/media/MediaMetrics$1;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getValueClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Landroid/media/MediaMetrics$1;->mType:Ljava/lang/Class;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 283
    iget-object v0, p0, Landroid/media/MediaMetrics$1;->mName:Ljava/lang/String;

    iget-object v1, p0, Landroid/media/MediaMetrics$1;->mType:Ljava/lang/Class;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
