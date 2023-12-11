.class public abstract Landroid/service/autofill/InternalTransformation;
.super Ljava/lang/Object;
.source "InternalTransformation.java"

# interfaces
.implements Landroid/service/autofill/Transformation;
.implements Landroid/os/Parcelable;


# static fields
.field private static final TAG:Ljava/lang/String; = "InternalTransformation"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static batchApply(Landroid/service/autofill/ValueFinder;Landroid/widget/RemoteViews;Ljava/util/ArrayList;)Z
    .registers 13
    .param p0, "finder"    # Landroid/service/autofill/ValueFinder;
    .param p1, "template"    # Landroid/widget/RemoteViews;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/autofill/ValueFinder;",
            "Landroid/widget/RemoteViews;",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/service/autofill/InternalTransformation;",
            ">;>;)Z"
        }
    .end annotation

    .line 63
    .local p2, "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 64
    .local v0, "size":I
    sget-boolean v1, Landroid/view/autofill/Helper;->sDebug:Z

    const-string v2, "InternalTransformation"

    if-eqz v1, :cond_27

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPresentation(): applying "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " transformations"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_27
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_28
    if-ge v1, v0, :cond_8c

    .line 66
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 67
    .local v3, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 68
    .local v4, "id":I
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/service/autofill/InternalTransformation;

    .line 69
    .local v5, "transformation":Landroid/service/autofill/InternalTransformation;
    sget-boolean v6, Landroid/view/autofill/Helper;->sDebug:Z

    const-string v7, ": "

    if-eqz v6, :cond_60

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "#"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_60
    :try_start_60
    invoke-virtual {v5, p0, p1, v4}, Landroid/service/autofill/InternalTransformation;->apply(Landroid/service/autofill/ValueFinder;Landroid/widget/RemoteViews;I)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_67

    .line 78
    nop

    .line 65
    .end local v3    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;"
    .end local v4    # "id":I
    .end local v5    # "transformation":Landroid/service/autofill/InternalTransformation;
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 73
    .restart local v3    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;"
    .restart local v4    # "id":I
    .restart local v5    # "transformation":Landroid/service/autofill/InternalTransformation;
    :catch_67
    move-exception v6

    .line 75
    .local v6, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not apply transformation "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 76
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 75
    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v2, 0x0

    return v2

    .line 80
    .end local v1    # "i":I
    .end local v3    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;"
    .end local v4    # "id":I
    .end local v5    # "transformation":Landroid/service/autofill/InternalTransformation;
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_8c
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method abstract apply(Landroid/service/autofill/ValueFinder;Landroid/widget/RemoteViews;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
