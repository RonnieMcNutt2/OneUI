.class abstract Landroid/service/notification/ZenModeDiff$BaseDiff;
.super Ljava/lang/Object;
.source "ZenModeDiff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ZenModeDiff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BaseDiff"
.end annotation


# instance fields
.field private mExists:I

.field private mFields:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/service/notification/ZenModeDiff$FieldDiff;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .param p1, "from"    # Ljava/lang/Object;
    .param p2, "to"    # Ljava/lang/Object;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/notification/ZenModeDiff$BaseDiff;->mExists:I

    .line 111
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/service/notification/ZenModeDiff$BaseDiff;->mFields:Landroid/util/ArrayMap;

    .line 133
    if-nez p1, :cond_15

    .line 134
    if-eqz p2, :cond_1a

    .line 135
    const/4 v0, 0x1

    iput v0, p0, Landroid/service/notification/ZenModeDiff$BaseDiff;->mExists:I

    goto :goto_1a

    .line 139
    :cond_15
    if-nez p2, :cond_1a

    .line 141
    const/4 v0, 0x2

    iput v0, p0, Landroid/service/notification/ZenModeDiff$BaseDiff;->mExists:I

    .line 146
    :cond_1a
    :goto_1a
    return-void
.end method


# virtual methods
.method final addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "diff"    # Landroid/service/notification/ZenModeDiff$FieldDiff;

    .line 154
    iget-object v0, p0, Landroid/service/notification/ZenModeDiff$BaseDiff;->mFields:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    return-void
.end method

.method public final fieldNamesWithDiff()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Landroid/service/notification/ZenModeDiff$BaseDiff;->mFields:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getDiffForField(Ljava/lang/String;)Landroid/service/notification/ZenModeDiff$FieldDiff;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 189
    iget-object v0, p0, Landroid/service/notification/ZenModeDiff$BaseDiff;->mFields:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    return-object v0
.end method

.method public abstract hasDiff()Z
.end method

.method public final hasExistenceChange()Z
    .registers 2

    .line 175
    iget v0, p0, Landroid/service/notification/ZenModeDiff$BaseDiff;->mExists:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final hasFieldDiffs()Z
    .registers 2

    .line 182
    iget-object v0, p0, Landroid/service/notification/ZenModeDiff$BaseDiff;->mFields:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public final wasAdded()Z
    .registers 3

    .line 161
    iget v0, p0, Landroid/service/notification/ZenModeDiff$BaseDiff;->mExists:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public final wasRemoved()Z
    .registers 3

    .line 168
    iget v0, p0, Landroid/service/notification/ZenModeDiff$BaseDiff;->mExists:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method
