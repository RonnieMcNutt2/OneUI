.class public Lcom/samsung/android/graphics/spr/cache/SprCacheManager;
.super Ljava/lang/Object;
.source "SprCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;
    }
.end annotation


# instance fields
.field private mCacheList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;",
            ">;"
        }
    .end annotation
.end field

.field private mHashCode:Ljava/lang/String;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "hashCode"    # I

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mCacheList:Ljava/util/ArrayList;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mName:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mHashCode:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mName:Ljava/lang/String;

    .line 41
    rem-int/lit16 v0, p2, 0x2710

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mHashCode:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public addCache(Landroid/graphics/Bitmap;I)V
    .registers 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "dpi"    # I

    .line 56
    if-nez p1, :cond_3

    return-void

    .line 58
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 59
    .local v0, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 61
    .local v1, "height":I
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mCacheList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 62
    const/4 v3, 0x0

    .line 63
    .local v3, "hasCache":Z
    :try_start_f
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mCacheList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;

    .line 64
    .local v5, "cache":Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;
    iget v6, v5, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->width:I

    if-ne v6, v0, :cond_2f

    iget v6, v5, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->height:I

    if-ne v6, v1, :cond_2f

    iget v6, v5, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->dpi:I

    if-ne v6, p2, :cond_2f

    .line 65
    const/4 v3, 0x1

    .line 66
    goto :goto_30

    .line 68
    .end local v5    # "cache":Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;
    :cond_2f
    goto :goto_15

    .line 70
    :cond_30
    :goto_30
    if-nez v3, :cond_3c

    .line 71
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mCacheList:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;

    invoke-direct {v5, p1, p2}, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .end local v3    # "hasCache":Z
    :cond_3c
    monitor-exit v2

    .line 74
    return-void

    .line 73
    :catchall_3e
    move-exception v3

    monitor-exit v2
    :try_end_40
    .catchall {:try_start_f .. :try_end_40} :catchall_3e

    throw v3
.end method

.method public getCache(III)Landroid/graphics/Bitmap;
    .registers 9
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "dpi"    # I

    .line 77
    const/4 v0, 0x0

    .line 79
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mCacheList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 80
    :try_start_4
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mCacheList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;

    .line 81
    .local v3, "cache":Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;
    iget v4, v3, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->width:I

    if-ne v4, p1, :cond_26

    iget v4, v3, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->height:I

    if-ne v4, p2, :cond_26

    iget v4, v3, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->dpi:I

    if-ne v4, p3, :cond_26

    .line 82
    iget-object v2, v3, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->bitmap:Landroid/graphics/Bitmap;

    move-object v0, v2

    .line 83
    goto :goto_27

    .line 85
    .end local v3    # "cache":Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;
    :cond_26
    goto :goto_a

    .line 86
    :cond_27
    :goto_27
    monitor-exit v1

    .line 88
    return-object v0

    .line 86
    :catchall_29
    move-exception v2

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_29

    throw v2
.end method

.method public lock(Landroid/graphics/Bitmap;)V
    .registers 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 92
    if-nez p1, :cond_3

    .line 93
    return-void

    .line 95
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mCacheList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 96
    :try_start_6
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mCacheList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;

    .line 97
    .local v2, "cache":Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;
    iget-object v3, v2, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->bitmap:Landroid/graphics/Bitmap;

    if-ne v3, p1, :cond_20

    .line 98
    invoke-virtual {v2}, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->lock()V

    .line 99
    goto :goto_21

    .line 101
    .end local v2    # "cache":Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;
    :cond_20
    goto :goto_c

    .line 102
    :cond_21
    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_31

    .line 104
    sget-boolean v0, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->IsDebug:Z

    if-eqz v0, :cond_30

    .line 105
    const-string v0, "SprDrawable"

    const-string v1, "-lock--------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->printDebug()V

    .line 108
    :cond_30
    return-void

    .line 102
    :catchall_31
    move-exception v1

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public printDebug()V
    .registers 7

    .line 45
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mCacheList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 46
    :try_start_3
    const-string v1, "SprDrawable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mHashCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") printDebug start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mCacheList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;

    .line 48
    .local v2, "cache":Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;
    const-string v3, "SprDrawable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mHashCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")Cache ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->dpi:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->refCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    nop

    .end local v2    # "cache":Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;
    goto :goto_2f

    .line 51
    :cond_8d
    const-string v1, "SprDrawable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mHashCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") printDebug end"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    monitor-exit v0

    .line 53
    return-void

    .line 52
    :catchall_b5
    move-exception v1

    monitor-exit v0
    :try_end_b7
    .catchall {:try_start_3 .. :try_end_b7} :catchall_b5

    throw v1
.end method

.method public unlock(Landroid/graphics/Bitmap;)V
    .registers 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 111
    if-nez p1, :cond_3

    .line 112
    return-void

    .line 114
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mCacheList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 115
    :try_start_6
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mCacheList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;

    .line 116
    .local v2, "cache":Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;
    iget-object v3, v2, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->bitmap:Landroid/graphics/Bitmap;

    if-ne v3, p1, :cond_2a

    .line 117
    invoke-virtual {v2}, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->unlock()V

    .line 118
    iget v1, v2, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->refCount:I

    if-nez v1, :cond_2b

    .line 119
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mCacheList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 120
    const/4 v1, 0x0

    .end local v2    # "cache":Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;
    .local v1, "cache":Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;
    goto :goto_2b

    .line 124
    .end local v1    # "cache":Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;
    :cond_2a
    goto :goto_c

    .line 125
    :cond_2b
    :goto_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_6 .. :try_end_2c} :catchall_3b

    .line 127
    sget-boolean v0, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->IsDebug:Z

    if-eqz v0, :cond_3a

    .line 128
    const-string v0, "SprDrawable"

    const-string v1, "-unlock------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->printDebug()V

    .line 131
    :cond_3a
    return-void

    .line 125
    :catchall_3b
    move-exception v1

    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v1
.end method
