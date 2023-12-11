.class public Landroid/util/SparseArrayMap;
.super Ljava/lang/Object;
.source "SparseArrayMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/SparseArrayMap$TriConsumer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;)TV;"
        }
    .end annotation

    .line 45
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    .local p2, "mapKey":Ljava/lang/Object;, "TK;"
    .local p3, "obj":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 46
    .local v0, "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    if-nez v0, :cond_15

    .line 47
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 48
    iget-object v1, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    :cond_15
    invoke-virtual {v0, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public clear()V
    .registers 3

    .line 55
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 56
    iget-object v1, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 58
    .end local v0    # "i":I
    :cond_17
    return-void
.end method

.method public contains(ILjava/lang/Object;)Z
    .registers 4
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;)Z"
        }
    .end annotation

    .line 62
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    .local p2, "mapKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public delete(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;)TV;"
        }
    .end annotation

    .line 85
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    .local p2, "mapKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 86
    .local v0, "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    if-eqz v0, :cond_f

    .line 87
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 89
    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method public delete(I)V
    .registers 3
    .param p1, "key"    # I

    .line 67
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 68
    return-void
.end method

.method public deleteAt(I)V
    .registers 3
    .param p1, "keyIndex"    # I

    .line 75
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 76
    return-void
.end method

.method public deleteAt(II)V
    .registers 4
    .param p1, "keyIndex"    # I
    .param p2, "mapIndex"    # I

    .line 97
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 98
    return-void
.end method

.method public forEach(Landroid/util/SparseArrayMap$TriConsumer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArrayMap$TriConsumer<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 207
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    .local p1, "consumer":Landroid/util/SparseArrayMap$TriConsumer;, "Landroid/util/SparseArrayMap$TriConsumer<TK;TV;>;"
    invoke-virtual {p0}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "iIdx":I
    :goto_6
    if-ltz v0, :cond_2f

    .line 208
    iget-object v1, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 209
    .local v1, "i":I
    iget-object v2, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 210
    .local v2, "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "kIdx":I
    :goto_1c
    if-ltz v3, :cond_2c

    .line 211
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v1, v4, v5}, Landroid/util/SparseArrayMap$TriConsumer;->accept(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 210
    add-int/lit8 v3, v3, -0x1

    goto :goto_1c

    .line 207
    .end local v1    # "i":I
    .end local v2    # "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .end local v3    # "kIdx":I
    :cond_2c
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 214
    .end local v0    # "iIdx":I
    :cond_2f
    return-void
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "TV;>;)V"
        }
    .end annotation

    .line 184
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TV;>;"
    invoke-virtual {p0}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_25

    .line 185
    iget-object v1, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 186
    .local v1, "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_16
    if-ltz v2, :cond_22

    .line 187
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 186
    add-int/lit8 v2, v2, -0x1

    goto :goto_16

    .line 184
    .end local v1    # "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .end local v2    # "j":I
    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 190
    .end local v0    # "i":I
    :cond_25
    return-void
.end method

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;)TV;"
        }
    .end annotation

    .line 105
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    .local p2, "mapKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 106
    .local v0, "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    if-eqz v0, :cond_f

    .line 107
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 109
    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method public getOrDefault(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;)TV;"
        }
    .end annotation

    .line 118
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    .local p2, "mapKey":Ljava/lang/Object;, "TK;"
    .local p3, "defaultValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 119
    iget-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 120
    .local v0, "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    if-eqz v0, :cond_1d

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 121
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 124
    .end local v0    # "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    :cond_1d
    return-object p3
.end method

.method public indexOfKey(I)I
    .registers 3
    .param p1, "key"    # I

    .line 129
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    return v0
.end method

.method public indexOfKey(ILjava/lang/Object;)I
    .registers 5
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;)I"
        }
    .end annotation

    .line 138
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    .local p2, "mapKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 139
    .local v0, "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    if-eqz v0, :cond_f

    .line 140
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    return v1

    .line 142
    :cond_f
    const/4 v1, -0x1

    return v1
.end method

.method public keyAt(I)I
    .registers 3
    .param p1, "index"    # I

    .line 147
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    return v0
.end method

.method public keyAt(II)Ljava/lang/Object;
    .registers 4
    .param p1, "keyIndex"    # I
    .param p2, "mapIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TK;"
        }
    .end annotation

    .line 153
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public numElementsForKey(I)I
    .registers 4
    .param p1, "key"    # I

    .line 163
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 164
    .local v0, "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    if-nez v0, :cond_c

    const/4 v1, 0x0

    goto :goto_10

    :cond_c
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    :goto_10
    return v1
.end method

.method public numElementsForKeyAt(I)I
    .registers 4
    .param p1, "keyIndex"    # I

    .line 172
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 173
    .local v0, "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    if-nez v0, :cond_c

    const/4 v1, 0x0

    goto :goto_10

    :cond_c
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    :goto_10
    return v1
.end method

.method public numMaps()I
    .registers 2

    .line 158
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public valueAt(II)Ljava/lang/Object;
    .registers 4
    .param p1, "keyIndex"    # I
    .param p2, "mapIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TV;"
        }
    .end annotation

    .line 179
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
